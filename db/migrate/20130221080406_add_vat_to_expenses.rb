class AddVatToExpenses < ActiveRecord::Migration
  def change
	add_column :expenses, :vat, :string
  end
end
