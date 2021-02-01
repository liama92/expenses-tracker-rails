module ExpenseTypesHelper
  def get_gradient(expense_type)
    expense_type.colour.first.gradient
  end


end
