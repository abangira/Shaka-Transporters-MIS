class AddTinToExpenses < ActiveRecord::Migration
  def change
	add_column :expenses, :tin, :string
  end
end
