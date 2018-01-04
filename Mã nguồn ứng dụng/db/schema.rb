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

ActiveRecord::Schema.define(version: 2017121417160135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auction_reports", force: :cascade do |t|
    t.integer "user_id"
    t.integer "staff_id"
    t.integer "seller_id"
    t.text "reason_report"
    t.text "result_report"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "auctions_id"
    t.index ["auctions_id"], name: "index_auction_reports_on_auctions_id"
  end

  create_table "auction_sessions", force: :cascade do |t|
    t.bigint "auction_id"
    t.bigint "user_id"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["auction_id"], name: "index_auction_sessions_on_auction_id"
    t.index ["user_id"], name: "index_auction_sessions_on_user_id"
  end

  create_table "auctions", force: :cascade do |t|
    t.float "auction_price"
    t.float "max_price"
    t.boolean "is_finished"
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "user_id"
    t.integer "is_valid", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
    t.integer "is_valid", default: 0
    t.index ["user_id"], name: "index_auctions_on_user_id"
  end

  create_table "bills", force: :cascade do |t|
    t.string "card_number_buyer", default: "", null: false
    t.string "card_number_seller", default: "", null: false
    t.integer "price", default: 0, null: false
    t.float "commission", default: 0.0, null: false
    t.boolean "status", default: false, null: false
    t.integer "seller_id", default: 0, null: false
    t.integer "buyer_id", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.index ["products_id"], name: "index_bills_on_products_id"
  end

  create_table "catalog_products", force: :cascade do |t|
    t.bigint "catalog_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["catalog_id"], name: "index_catalog_products_on_catalog_id"
    t.index ["product_id"], name: "index_catalog_products_on_product_id"
  end

  create_table "catalogs", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.text "description", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["description"], name: "index_catalogs_on_description", unique: true
    t.index ["name"], name: "index_catalogs_on_name", unique: true
  end

  create_table "data_table_usings", force: :cascade do |t|
    t.string "name"
    t.integer "count"
    t.date "using_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delete_auction_sessions", force: :cascade do |t|
    t.integer "reason"
    t.text "reason_detail"
    t.boolean "is_verified"
    t.bigint "auction_session_id"
    t.integer "user_id"
    t.integer "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["auction_session_id"], name: "index_delete_auction_sessions_on_auction_session_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.string "keyword", default: "", null: false
    t.integer "count", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_keywords_on_user_id"
  end

  create_table "page_usings", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.integer "count"
    t.date "using_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_reports", force: :cascade do |t|
    t.text "report_content"
    t.boolean "is_valid"
    t.boolean "is_newest"
    t.bigint "user_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_reports_on_product_id"
    t.index ["user_id"], name: "index_product_reports_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.text "description", default: "", null: false
    t.boolean "is_valid"
    t.float "buy_now_price"
    t.float "starting_price"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "auction_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "url", default: "", null: false
    t.integer "object_id", default: -1, null: false
    t.integer "resouce_type", default: -1, null: false
    t.integer "object_type", default: -1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
  end

  create_table "scores", force: :cascade do |t|
    t.string "reason_change", default: "", null: false
    t.integer "total_score", default: 0, null: false
    t.boolean "status", default: false, null: false
    t.boolean "is_newest", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.index ["users_id"], name: "index_scores_on_users_id"
  end

  create_table "service_registers", force: :cascade do |t|
    t.string "card_number", default: "", null: false
    t.date "start_time", null: false
    t.date "end_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.bigint "services_id"
    t.index ["services_id"], name: "index_service_registers_on_services_id"
    t.index ["users_id"], name: "index_service_registers_on_users_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "description", default: "", null: false
    t.integer "service_price", default: 0, null: false
    t.integer "duration", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["description"], name: "index_services_on_description", unique: true
    t.index ["name"], name: "index_services_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name", default: "", null: false
    t.string "address", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "sandbox_account", default: "", null: false
    t.integer "score", default: 0, null: false
    t.integer "role", default: 0, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "watch_lists", force: :cascade do |t|
    t.integer "id_object", default: 0, null: false
    t.integer "object_type", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  add_foreign_key "auction_reports", "auctions", column: "auctions_id"
  add_foreign_key "auction_reports", "users"
  add_foreign_key "auction_reports", "users", column: "seller_id"
  add_foreign_key "auction_reports", "users", column: "staff_id"
  add_foreign_key "auction_sessions", "auctions"
  add_foreign_key "auction_sessions", "users"
  add_foreign_key "auctions", "users"
  add_foreign_key "bills", "products", column: "products_id"
  add_foreign_key "bills", "users", column: "buyer_id"
  add_foreign_key "bills", "users", column: "seller_id"
  add_foreign_key "catalog_products", "catalogs"
  add_foreign_key "catalog_products", "products"
  add_foreign_key "delete_auction_sessions", "users"
  add_foreign_key "delete_auction_sessions", "users", column: "staff_id"
  add_foreign_key "keywords", "users"
  add_foreign_key "product_reports", "products"
  add_foreign_key "product_reports", "users"
  add_foreign_key "scores", "users", column: "users_id"
  add_foreign_key "service_registers", "services", column: "services_id"
  add_foreign_key "service_registers", "users", column: "users_id"
end
