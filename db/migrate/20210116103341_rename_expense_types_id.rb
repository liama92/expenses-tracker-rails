class RenameExpenseTypesId < ActiveRecord::Migration[6.0]
  def change
    rename_column :expenses, :expense_types_id, :expense_type_id
  end
end
