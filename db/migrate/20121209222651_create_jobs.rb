class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :driver_name
      t.string :vehicle_number
      t.string :previous_route
      t.integer :days
      t.float :fuel
      t.integer :price_per_litre
      t.string :receipt_number
      t.integer :amount
      t.string :fuel_payment_method
      t.string :station
      t.string :route_given
      t.date :departure_date
      t.boolean :change_of_route
      t.integer :allowance
      t.date :job_date
      t.string :document_number
      t.string :job_details
      t.float :weight_in_tons
      t.integer :job_rate
      t.integer :job_amount
      t.string :job_payment_method
      t.string :client
    

      t.timestamps
    end
  end
end
