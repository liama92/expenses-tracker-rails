class Expense < ApplicationRecord
  # asociations
  belongs_to :expense_type

  # validations
  validates_presence_of :amount
  validates_presence_of :spent_on

  def to_s
    expense_type.name
  end

  def monthly
    Expense.connection.select_all("SELECT MONTH(spent_on) AS month, YEAR(spent_on) AS year, SUM(amount) AS amount FROM `expenses` GROUP BY YEAR(spent_on), MONTH(spent_on) ORDER BY year DESC, month DESC") 
  end
end
