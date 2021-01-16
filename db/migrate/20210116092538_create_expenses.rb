class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.date :spent_on, null: false
      t.string :extra_info

      t.references :expense_types, index: true
      t.references :colours, index: true
      t.timestamps
    end
  end
end
