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

ActiveRecord::Schema.define(:version => 20130612141100) do

  create_table "visits", :force => true do |t|
    t.string   "school_name"
    t.date     "visit_date"
    t.float    "ranking"
    t.string   "contact_name"
    t.string   "contat_email"
    t.string   "contact_phone"
    t.string   "in_session"
    t.string   "tour"
    t.string   "interview"
    t.string   "info_session"
    t.string   "overnight"
    t.string   "class_visit"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
