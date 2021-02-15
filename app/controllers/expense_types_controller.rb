class ExpenseTypesController < ApplicationController
  before_action :set_expense_types, only: [:index]

  def index
  end

  def new
    @expense_type = ExpenseType.new
  end

  def create
    @expense_type = ExpenseType.new(expense_type_params)

    if @expense_type.save
      redirect_to expense_types_path
    else
      render :new
    end
  end

  private

  def set_expense_types
    @expense_types = ExpenseType.all
  end

  def expense_type_params
    params
      .require(:expense_type)
      .permit(:colour_id, :name)
  end
end
