class Expense < ActiveRecord::Base
  
  attr_accessible :account_affected, :authorized_by, :comments, :invoice_number, :item, :payment_method, :payment_status, :purchased_by, :quantity, :supplier, :total_amount, :unit_price
  has_paper_trail
  
  def payment_method_enum
	['Cash', 'Cheque', 'Mobile Money', 'Bank Transfer']
  end
  
  def payment_status_enum
	['Paid','Partial Payment', 'Unpaid']
  end
  def account_affected_enum
	['Shaka Company', 'Shaka Augustine']
  end
  
end
