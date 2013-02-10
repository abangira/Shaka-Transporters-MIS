class Job < ActiveRecord::Base
  
  attr_accessible :allowance, :amount, :client, :days, :departure_date, :document_number, :driver_name, :fuel, :fuel_payment_method, :job_amount, :job_date, :job_details, :job_payment_method, :job_rate, :previous_route, :price_per_litre, :receipt_number, :route_given, :station, :vehicle_number, :weight_in_tons
  validates :driver_name, :job_amount, :job_details, :presence => true
  has_paper_trail
end
