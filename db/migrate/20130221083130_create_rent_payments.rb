class CreateRentPayments < ActiveRecord::Migration
  def change
    create_table :rent_payments do |t|
      t.string :property
      t.string :invoice_number
      t.string :tenant
      t.string :category
      t.date :period_start
      t.date :period_end
      t.integer :rate_per_unit
      t.integer :total_amount
      t.boolean :paid
      t.string :payment_mode
      t.string :payment_transaction_number
      t.string :paid_by
      t.date :payment_date

      t.timestamps
    end
  end
end
