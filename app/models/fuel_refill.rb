class FuelRefill < ActiveRecord::Base
  
  attr_accessible :account, :amount, :litres, :price, :receipt_number, :station, :vehicle_number, :order_number
  has_paper_trail
  def account_enum
	['Shaka Company', 'Shaka Augustine']
  end
end
