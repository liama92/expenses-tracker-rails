class ExpensesController < ApplicationController
  before_action :set_monthly_expenses, only: [:index]
  before_action :set_month, only: [:month]
  
  def index
  end

  def month
  end

  private

  def set_monthly_expenses
    @expenses = Expense.connection.select_all("SELECT MONTH(spent_on) AS month, YEAR(spent_on) AS year, SUM(amount) AS amount FROM `expenses` GROUP BY YEAR(spent_on), MONTH(spent_on) ORDER BY year DESC, month DESC") 
  end

  def set_month
    @expenses = Expense.month(params[:month], params[:year])
  end

end
