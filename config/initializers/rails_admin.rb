RailsAdmin.config do |config|
  config.audit_with :paper_trail, User
  config.authorize_with :cancan
  config.main_app_name = ['Shaka Co. Ltd']
  config.model Expense do
	edit do
      field :supplier
      field :invoice_number
      field :item
      field :quantity
      field :unit_price
      field :total_amount
      field :payment_method
      field :payment_status
      field :account_affected
      field :purchased_by
      field :authorized_by
      field :comments, :rich_editor do
        config({
          :insert_many => true
        })
      end
    end
  end
end