class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.string :garage
      t.string :details_of_service
      t.string :vehicle_number
      t.string :invoice_number
      t.integer :amount

      t.timestamps
    end
  end
end
