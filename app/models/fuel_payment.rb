class FuelPayment < ActiveRecord::Base
  resourcify
  attr_accessible  :account_id, :amount_paid, :balance_amount, :period_end, :period_start, :receipt_number, :station
  has_paper_trail
end
