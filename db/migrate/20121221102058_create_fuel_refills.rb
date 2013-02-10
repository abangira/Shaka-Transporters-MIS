class CreateFuelRefills < ActiveRecord::Migration
  def change
    create_table :fuel_refills do |t|
	  t.string :account
      t.string :vehicle_number
      t.integer :station
      t.decimal :litres
      t.integer :price
      t.integer :amount
      t.string :receipt_number
      t.string :card_number
      
      
      t.timestamps
    end
  end
end
