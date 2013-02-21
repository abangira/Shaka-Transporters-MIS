class AddCategoriesToExpenses < ActiveRecord::Migration
  def change
	add_column :expenses, :category, :string
  end
end
