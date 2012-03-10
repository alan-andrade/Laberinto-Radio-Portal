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

ActiveRecord::Schema.define(:version => 20120310092011) do

  create_table "days", :force => true do |t|
    t.string "day", :null => false
  end

  create_table "ownerships", :force => true do |t|
    t.integer "broadcaster_id", :null => false
    t.integer "program_id",     :null => false
  end

  add_index "ownerships", ["broadcaster_id"], :name => "index_ownerships_on_presenter_id"
  add_index "ownerships", ["program_id"], :name => "index_ownerships_on_program_id"

  create_table "programs", :force => true do |t|
    t.string   "name",              :null => false
    t.text     "description"
    t.datetime "start_time",        :null => false
    t.datetime "end_time",          :null => false
    t.string   "logo_file_name"
    t.integer  "logo_content_type"
    t.integer  "logo_file_size"
  end

  create_table "requests", :force => true do |t|
    t.integer  "requester_id", :null => false
    t.integer  "presenter_id", :null => false
    t.integer  "program_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requests", ["presenter_id"], :name => "index_requests_on_presenter_id"
  add_index "requests", ["program_id"], :name => "index_requests_on_program_id"
  add_index "requests", ["requester_id"], :name => "index_requests_on_requester_id"

  create_table "schedules", :force => true do |t|
    t.integer "program_id", :null => false
    t.integer "day_id",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name",                                   :null => false
    t.string   "twitter"
    t.string   "facebook"
    t.text     "biography"
    t.boolean  "admin",               :default => false
    t.string   "email",                                  :null => false
    t.string   "crypted_password",                       :null => false
    t.string   "password_salt",                          :null => false
    t.string   "persistence_token",                      :null => false
    t.string   "single_access_token",                    :null => false
    t.string   "perishable_token",                       :null => false
    t.integer  "login_count",         :default => 0,     :null => false
    t.integer  "failed_login_count",  :default => 0,     :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "type"
  end

end
