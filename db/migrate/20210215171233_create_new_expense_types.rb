class CreateNewExpenseTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :expense_types do |t|
      t.bigint  :colour_id
      t.string :name, null: false
      t.timestamps
    end
    add_index :expense_types, :colour_id
  end
end
