# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130130123413) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "expenses", :force => true do |t|
    t.string   "supplier"
    t.string   "invoice_number"
    t.string   "item"
    t.integer  "quantity"
    t.integer  "unit_price"
    t.integer  "total_amount"
    t.string   "payment_method"
    t.string   "payment_status"
    t.string   "account_affected"
    t.string   "purchased_by"
    t.string   "authorized_by"
    t.string   "comments"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "fuel_payments", :force => true do |t|
    t.integer  "station"
    t.date     "period_start"
    t.date     "period_end"
    t.integer  "amount_paid"
    t.integer  "balance_amount"
    t.string   "receipt_number"
    t.integer  "account_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "fuel_refills", :force => true do |t|
    t.string   "account"
    t.string   "vehicle_number"
    t.integer  "station"
    t.decimal  "litres",         :precision => 10, :scale => 0
    t.integer  "price"
    t.integer  "amount"
    t.string   "receipt_number"
    t.string   "card_number"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "jobs", :force => true do |t|
    t.string   "driver_name"
    t.string   "vehicle_number"
    t.string   "previous_route"
    t.integer  "days"
    t.float    "fuel"
    t.integer  "price_per_litre"
    t.string   "receipt_number"
    t.integer  "amount"
    t.string   "fuel_payment_method"
    t.string   "station"
    t.string   "route_given"
    t.date     "departure_date"
    t.boolean  "change_of_route"
    t.integer  "allowance"
    t.date     "job_date"
    t.string   "document_number"
    t.string   "job_details"
    t.float    "weight_in_tons"
    t.integer  "job_rate"
    t.integer  "job_amount"
    t.string   "job_payment_method"
    t.string   "client"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "repairs", :force => true do |t|
    t.string   "garage"
    t.string   "details_of_service"
    t.string   "vehicle_number"
    t.string   "invoice_number"
    t.integer  "amount"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "rich_rich_files", :force => true do |t|
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "rich_file_file_name"
    t.string   "rich_file_content_type"
    t.integer  "rich_file_file_size"
    t.datetime "rich_file_updated_at"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.text     "uri_cache"
    t.string   "simplified_type",        :default => "file"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "stations", :force => true do |t|
    t.string   "name"
    t.string   "contact_details"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
