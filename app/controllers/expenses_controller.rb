class ExpensesController < ApplicationController
  before_action :set_monthly_expenses, only: [:index]
  before_action :set_month, only: [:month]
  
  def index
  end

  def month
  end

  def new
    @expense = Expense.new
  end

  def edit
  end

  def create
    @expense = Expense.new(expense_params)
    if @expense.save
      redirect_to expenses_path
    else
      render :new
    end
  end

  def update
    if @expense.update(expense_params)
      redirect_to expenses_path
    else
      render :edit
    end
  end

  private

  def set_monthly_expenses
    @expenses = Expense.monthly
  end

  def set_month
    @expenses = Expense.month(params[:month], params[:year])
  end

  def expense_params
    params
      .require(:expense)
      .permit(:amount, :extra_info, :expense_type_id, :spent_on)
  end

end
