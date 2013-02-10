class Repair < ActiveRecord::Base
  resourcify
  attr_accessible :amount, :details_of_service, :garage, :invoice_number, :vehicle_number
end
