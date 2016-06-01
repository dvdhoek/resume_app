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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160601060655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about", force: :cascade do |t|
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "education", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "institution"
    t.string   "type"
    t.string   "programme"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "description"
    t.string   "grade"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "position"
    t.string   "company"
    t.string   "description"
    t.string   "location"
    t.string   "link"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "language", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "level"
    t.integer  "written"
    t.integer  "spoken"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personal_info", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "dob"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "contact_number"
    t.string   "address_street"
    t.string   "address_city"
    t.string   "address_country"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "link"
    t.string   "description"
    t.string   "contract_type"
    t.string   "client"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.integer  "rating"
    t.string   "endorsements"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "encrypted_password", limit: 128
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
