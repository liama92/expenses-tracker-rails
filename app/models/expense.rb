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

  # group all expenses by month
  def self.monthly
    Expense.connection.select_all("SELECT MONTH(spent_on) AS month, YEAR(spent_on) AS year, SUM(amount) AS amount FROM `expenses` GROUP BY YEAR(spent_on), MONTH(spent_on) ORDER BY year DESC, month DESC") 
  end

  # select all expenses for a given month
  def self.month(month, year)
    Expense.where("YEAR(spent_on) = ? AND MONTH(spent_on) = ?", year, month).ordered
  end

  def self.monthly_by_type(month, year, expense_type)
    Expense.where("YEAR(spent_on) = ? AND MONTH(spent_on) = ? AND expense_type_id = ?", year, month, expense_type).ordered
  end

  # group all exepenses by week 
  def self.weekly 
    Expense.connection.select_all("SELECT WEEK(spent_on) AS week, MONTH(spent_on) AS month, YEAR(spent_on) AS year, SUM(amount) AS amount FROM `expenses` GROUP BY week, month, year ORDER BY year DESC, week DESC") 
  end

  def self.week(month, week, year)
    Expense.where("YEAR(spent_on) = ? AND MONTH(spent_on) = ? AND WEEK(spent_on) = ?", year, month, week).ordered
  end

  def self.weekly_by_type(week, year, expense_type)
    Expense.where("YEAR(spent_on) = ? AND WEEK(spent_on) = ? AND expense_type_id = ?", year, week, expense_type).ordered
  end

  def gradient
    expense_type.colour.gradient
  end
end
