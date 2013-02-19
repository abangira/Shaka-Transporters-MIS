class AddFuelRefillDate < ActiveRecord::Migration
  def change
    change_table :fuel_refills do |t|
      t.date :refill_date
    end
  end
end
