class Station < ActiveRecord::Base
  attr_accessible :contact_details, :name
  has_many :fuel_refills
end
