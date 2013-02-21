class RentPayment < ActiveRecord::Base
  attr_accessible :category, :invoice_number, :paid, :paid_by, :payment_date, :payment_mode, :payment_transaction_number, :period_end, :period_start, :property, :rate_per_unit, :tenant, :total_amount
  has_paper_trail
  def category_enum
	['House Rent', 'Parking Yard Rent']
  end
  def payment_mode_enum
	['Cash', 'Cheque', 'Mobile Money', 'Bank Transfer']
  end
  def property_enum
	['Rwenzori', 'Hima']
  end
end

