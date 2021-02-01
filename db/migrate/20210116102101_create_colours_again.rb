class CreateColoursAgain < ActiveRecord::Migration[6.0]
  def change

    create_table :colours do |t|
      t.bigint  :expense_type_id

      t.string :primary, null: false
      t.string :gradient, null: false

    end

    add_index :colours, :expense_type_id
  end
end
