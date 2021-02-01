class ExpenseTypesController < ApplicationController
  before_action :set_expense_types, only: [:index]

  def index
  end

  def new
    @expense_type = ExpenseType.new
  end

  def create
    # TODO the association might need thinking about more 
    # a colour should have many expense types 
    
    @expense_type = ExpenseType.new(expense_type_params)
   # @expense_type.colour = Colour.first
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

  def set_colour
    logger.debug("looking for colour with")
    logger.debug(params[:colour])
    Colour.find_by(id: params[:colour])
  end

  def expense_type_params
    params
      .require(:expense_type)
      .permit(:name)
  end
end
