class CreateExpenseTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :expense_types do |t|
      t.string :name, null: false
      t.references :colours, index: true
      
      t.timestamps
    end
  end
end
