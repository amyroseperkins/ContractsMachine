# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100808225001) do

  create_table "alt_provs", :force => true do |t|
    t.text     "legal_language"
    t.string   "simple_description"
    t.integer  "contract_id"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", :force => true do |t|
    t.string   "author"
    t.string   "editor"
    t.string   "title"
    t.string   "author_citizen"
    t.text     "subject"
    t.string   "length"
    t.integer  "page_number"
    t.string   "illustrations"
    t.text     "integral"
    t.string   "index"
    t.date     "delivery_date"
    t.decimal  "hc_dom_net"
    t.decimal  "hc_ex_net"
    t.decimal  "pb_dom_net"
    t.decimal  "pb_ex_net"
    t.decimal  "epub_net"
    t.decimal  "ebook_net"
    t.decimal  "copub_incl"
    t.decimal  "bookclub_incl"
    t.decimal  "bookclub_excl"
    t.decimal  "audio_dom"
    t.decimal  "audio_ex"
    t.decimal  "custompub"
    t.decimal  "specialsale"
    t.decimal  "sub_trans"
    t.decimal  "sub_epub"
    t.decimal  "sub_hc"
    t.decimal  "sub_pb"
    t.decimal  "sub_1serial_print"
    t.decimal  "sub_2serial_print"
    t.decimal  "sub_1serial_digital"
    t.decimal  "sub_2serial_digital"
    t.decimal  "sub_audio"
    t.decimal  "sub_braille"
    t.decimal  "sub_misc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
