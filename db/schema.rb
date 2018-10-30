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

ActiveRecord::Schema.define(version: 2018_10_10_213331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "state_id"
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", null: false
    t.integer "indicate"
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_materials_on_name", unique: true
  end

  create_table "measurement_units", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_measurement_units_on_name", unique: true
  end

  create_table "offers", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "product_id"
    t.float "price_offer", null: false
    t.boolean "active", default: true
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_offers_on_product_id"
    t.index ["user_id"], name: "index_offers_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "product_id"
    t.boolean "active", default: true
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_photos_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.bigint "user_id"
    t.bigint "unit_id"
    t.bigint "material_id"
    t.float "price", default: 0.0
    t.integer "amount", null: false
    t.datetime "date_finish"
    t.text "location", null: false
    t.time "collection_time", null: false
    t.boolean "active", default: true
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_products_on_material_id"
    t.index ["unit_id"], name: "index_products_on_unit_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "qualifications", force: :cascade do |t|
    t.bigint "transaction_id"
    t.integer "value", null: false
    t.text "feedback"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["transaction_id"], name: "index_qualifications_on_transaction_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "country_id"
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "towns", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "city_id"
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_towns_on_city_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "user_id"
    t.float "value"
    t.boolean "active", default: true
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_transactions_on_product_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "type_users", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_type_users_on_name", unique: true
  end

  create_table "units", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_units_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "phone", null: false
    t.string "email", limit: 55, null: false
    t.string "password_digest", null: false
    t.bigint "type_user_id"
    t.bigint "town_id"
    t.boolean "active", default: true
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["phone"], name: "index_users_on_phone", unique: true
    t.index ["town_id"], name: "index_users_on_town_id"
    t.index ["type_user_id"], name: "index_users_on_type_user_id"
  end

  add_foreign_key "cities", "states"
  add_foreign_key "offers", "products"
  add_foreign_key "offers", "users"
  add_foreign_key "photos", "products"
  add_foreign_key "products", "materials"
  add_foreign_key "products", "units"
  add_foreign_key "products", "users"
  add_foreign_key "qualifications", "transactions"
  add_foreign_key "states", "countries"
  add_foreign_key "towns", "cities"
  add_foreign_key "transactions", "products"
  add_foreign_key "transactions", "users"
  add_foreign_key "users", "towns"
  add_foreign_key "users", "type_users"
end
