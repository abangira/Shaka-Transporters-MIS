class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :contact_details

      t.timestamps
    end
  end
end
