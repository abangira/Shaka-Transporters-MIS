class CreateFuelPayments < ActiveRecord::Migration
  def change
    create_table :fuel_payments do |t|
      t.integer :station
      t.date :period_start
      t.date :period_end
      t.integer :amount_paid
      t.integer :balance_amount
      t.string :receipt_number
      t.integer :account_id
      
      t.timestamps
    end
  end
end
