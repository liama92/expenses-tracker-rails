class CreateColors < ActiveRecord::Migration[6.0]
  def change
    create_table :colors do |t|
      t.string :primary, null: false
      t.string :gradient, null: false
    end
  end
end
