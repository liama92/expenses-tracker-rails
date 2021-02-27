class ExpensesController < ApplicationController
  before_action :set_monthly_expenses, only: [:monthly]
  before_action :set_weekly_expenses, only: [:weekly]
  before_action :set_month, only: [:month]
  before_action :set_week, only: [:week]
  
  # expenses by months
  def monthly
  end

  # expenses for a given month
  def month
  end

  # expenses by weeks
  def weekly
  end

  # expenses for a given week
  def week
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
    if params[:expense_type].present?
      @expenses = Expense.monthly_by_type(params[:month], params[:year], params[:expense_type])    
    else
      @expenses = Expense.month(params[:month], params[:year])    
    end
  end

  def set_weekly_expenses
    @expenses = Expense.weekly
  end

  def set_week
    if params[:expense_type].present?
      @expenses = Expense.weekly_by_type(params[:week], params[:year], params[:expense_type])    
    else
      logger.debug("in here")
      @expenses = Expense.week(params[:month], params[:week], params[:year])    
    end
  end

  def expense_params
    params
      .require(:expense)
      .permit(:amount, :extra_info, :expense_type_id, :spent_on, :week)
  end

end
