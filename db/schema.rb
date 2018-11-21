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

ActiveRecord::Schema.define(version: 2018_11_21_181433) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applicant_nationalities", force: :cascade do |t|
    t.bigint "applicants_info_id"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["applicants_info_id"], name: "index_applicant_nationalities_on_applicants_info_id"
    t.index ["country_id"], name: "index_applicant_nationalities_on_country_id"
  end

  create_table "applicants_info", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birth"
    t.integer "gender"
    t.integer "number_of_dependents"
    t.bigint "city_id"
    t.bigint "visa_status_id"
    t.bigint "marital_status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["city_id"], name: "index_applicants_info_on_city_id"
    t.index ["marital_status_id"], name: "index_applicants_info_on_marital_status_id"
    t.index ["user_id"], name: "index_applicants_info_on_user_id"
    t.index ["visa_status_id"], name: "index_applicants_info_on_visa_status_id"
  end

  create_table "cities", force: :cascade do |t|
    t.bigint "country_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "sort_name"
    t.string "phone_code"
  end

  create_table "marital_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visa_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "applicant_nationalities", "applicants_info"
  add_foreign_key "applicant_nationalities", "countries"
end
