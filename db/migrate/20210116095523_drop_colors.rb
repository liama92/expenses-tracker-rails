class DropColors < ActiveRecord::Migration[6.0]
  def change
    drop_table :colors
  end
end
