class DropTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :expense_types_colours
    drop_table :expense_types
    drop_table :colours
  end
end
