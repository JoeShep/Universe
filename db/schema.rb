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

ActiveRecord::Schema.define(:version => 20130621042900) do

  create_table "rankings", :force => true do |t|
    t.integer  "visit_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.float    "dorms"
    t.float    "campus"
    t.float    "food_campus"
    t.float    "food_off_campus"
    t.float    "majors"
    t.float    "town"
    t.float    "library"
    t.float    "students"
    t.float    "classrooms"
    t.float    "student_center"
    t.float    "intramural_sports"
    t.float    "other_activities"
  end

  add_index "rankings", ["visit_id"], :name => "index_rankings_on_visit_id"

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

  create_table "visits", :force => true do |t|
    t.string   "school_name"
    t.string   "visit_date"
    t.float    "overall_ranking"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
    t.boolean  "in_session"
    t.boolean  "tour"
    t.boolean  "interview"
    t.boolean  "info_session"
    t.boolean  "overnight"
    t.boolean  "class_visit"
  end

end
