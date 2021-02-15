class CreateExpenseTypesColours < ActiveRecord::Migration[6.0]
  def change
    create_table :expense_types_colours do |t|
      t.belongs_to :colour
      t.belongs_to :expense_type
    end
  end
end
