# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_12_29_180106) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "church_user_addresses", force: :cascade do |t|
    t.bigint "church_user_id", null: false
    t.string "street"
    t.string "neighborhood"
    t.string "zip"
    t.string "number"
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["church_user_id"], name: "index_church_user_addresses_on_church_user_id"
  end

  create_table "church_user_contacts", force: :cascade do |t|
    t.bigint "church_user_id", null: false
    t.string "email"
    t.string "phone"
    t.string "cellphone"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["church_user_id"], name: "index_church_user_contacts_on_church_user_id"
  end

  create_table "church_users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "root"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id"
    t.index ["company_id"], name: "index_church_users_on_company_id"
    t.index ["confirmation_token"], name: "index_church_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_church_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_church_users_on_reset_password_token", unique: true
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "legal_id"
    t.datetime "activated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "schema_name"
  end

  create_table "company_addresses", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "street"
    t.string "neighborhood"
    t.string "zip"
    t.string "number"
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_addresses_on_company_id"
  end

  create_table "company_contacts", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "email"
    t.string "phone"
    t.string "cellphone"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_contacts_on_company_id"
  end

  add_foreign_key "church_user_addresses", "church_users"
  add_foreign_key "church_user_contacts", "church_users"
  add_foreign_key "company_addresses", "companies"
  add_foreign_key "company_contacts", "companies"
end
