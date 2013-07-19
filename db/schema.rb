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

ActiveRecord::Schema.define(:version => 20130718103000) do

  create_table "rankings", :force => true do |t|
    t.integer  "visit_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "dorms"
    t.integer  "campus"
    t.integer  "food_campus"
    t.integer  "food_off_campus"
    t.integer  "majors"
    t.integer  "town"
    t.integer  "library"
    t.integer  "students"
    t.integer  "classrooms"
    t.integer  "student_center"
    t.integer  "intramural_sports"
    t.integer  "other_activities"
    t.text     "dorms_note"
    t.text     "campus_note"
    t.text     "food_campus_note"
    t.text     "food_off_campus_note"
    t.text     "majors_note"
    t.text     "town_note"
    t.text     "library_note"
    t.text     "students_note"
    t.text     "classrooms_note"
    t.text     "student_center_note"
    t.text     "intramural_sports_note"
    t.text     "other_activities_note"
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
