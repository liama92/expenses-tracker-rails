class Expense < ApplicationRecord
  # asociations
  belongs_to :expense_type

  # validations
  validates_presence_of :amount
  validates_presence_of :spent_on

  # scopes
  scope :ordered, -> { order(spent_on: :desc) }

  def to_s
    if extra_info.present?
      "#{expense_type.name} - #{extra_info}"
    else
      expense_type.name
    end
  end

  def monthly
    Expense.connection.select_all("SELECT MONTH(spent_on) AS month, YEAR(spent_on) AS year, SUM(amount) AS amount FROM `expenses` GROUP BY YEAR(spent_on), MONTH(spent_on) ORDER BY year DESC, month DESC") 
  end

  def self.month(month, year)
    Expense.all.where("YEAR(spent_on) = ? AND MONTH(spent_on) = ?", year, month).ordered
  end

  def gradient
    expense_type.colour.first.gradient
  end
end
