class ExpensesController < ApplicationController
  before_action :set_expenses, only: [:index]
  
  def index
  end

  private

  def set_expenses
    @expenses = Expense.all
  end

end
