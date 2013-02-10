class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :supplier
      t.string :invoice_number
      t.string :item
      t.integer :quantity
      t.integer :unit_price
      t.integer :total_amount
      t.string :payment_method
      t.string :payment_status
      t.string :account_affected
      t.string :purchased_by
      t.string :authorized_by
      t.string :comments

      t.timestamps
    end
  end
end
