class DropExpenseTypesAndColours < ActiveRecord::Migration[6.0]
  def change
    drop_table :colours
    drop_table :expense_types
  end
end
