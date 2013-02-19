class AddOrderNoToFuelRefill < ActiveRecord::Migration
  def change
    change_table :fuel_refills do |t|
      t.rename :card_number, :order_number
    end
  end
end
