class AddPurchasesToFuelRefill < ActiveRecord::Migration
  def change
	add_column :fuel_refills, :other_purchases, :text
  end
end
