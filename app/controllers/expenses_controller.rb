class ExpensesController < ApplicationController
  before_action :set_expenses, only: [:index]
  
  def index
  end

  private

  def set_expenses
    @expenses = Expense.connection.select_all("SELECT MONTH(spent_on) AS month, YEAR(spent_on) AS year, SUM(amount) AS amount FROM `expenses` GROUP BY YEAR(spent_on), MONTH(spent_on) ORDER BY year DESC, month DESC") 

  end

end
