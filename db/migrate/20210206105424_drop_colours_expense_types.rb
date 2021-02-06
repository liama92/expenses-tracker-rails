class DropColoursExpenseTypes < ActiveRecord::Migration[6.0]
  def change
    drop_table :colours_expense_types
  end
end
