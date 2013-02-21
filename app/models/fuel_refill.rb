class FuelRefill < ActiveRecord::Base
  
  attr_accessible :account, :subaccount, :amount, :litres, :other_purchases, :price, :receipt_number, :station, :vehicle_number, :order_number, :refill_date
  has_paper_trail
  def account_enum
	['Shaka Company', 'Shaka Augustine']
  end
  def subaccount_enum
	['Kateso', 'Singa', 'Twebaze', 'Rogers Kabaco', 'Ruhweza', 'Fred', 'Sowedi', 'Mukobi', 'Mukobi-Twebaze', 'Mukobi-Fred', 'Other']
  end
end
