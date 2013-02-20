class AddStationToFuelRefill < ActiveRecord::Migration
  def change
    change_column :fuel_refills, :station, :string
  end
end
