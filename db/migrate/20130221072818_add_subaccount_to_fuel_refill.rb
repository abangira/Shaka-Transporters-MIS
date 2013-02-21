class AddSubaccountToFuelRefill < ActiveRecord::Migration
  def change
	add_column :fuel_refills, :subaccount, :string
  end
end
