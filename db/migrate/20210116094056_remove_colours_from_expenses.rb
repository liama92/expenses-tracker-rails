class RemoveColoursFromExpenses < ActiveRecord::Migration[6.0]
  def change
    remove_column :expenses, :colours_id   
  end
end
