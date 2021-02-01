class CreateColoursExpenseTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :colours_expense_types, id: false do |t|
      t.belongs_to :colour
      t.belongs_to :expense_type
    end
  end
end
