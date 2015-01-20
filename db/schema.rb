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

ActiveRecord::Schema.define(version: 20150120201007) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "establishment_ingredients", force: :cascade do |t|
    t.integer  "establishment_id"
    t.integer  "ingredient_id"
    t.integer  "quantity"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "establishment_ingredients", ["establishment_id"], name: "index_establishment_ingredients_on_establishment_id"
  add_index "establishment_ingredients", ["ingredient_id"], name: "index_establishment_ingredients_on_ingredient_id"

  create_table "establishments", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.integer  "tables_number"
    t.integer  "seats_number"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "unit_of_measurement"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "invoice_products", force: :cascade do |t|
    t.integer  "invoice_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "invoice_products", ["invoice_id"], name: "index_invoice_products_on_invoice_id"
  add_index "invoice_products", ["product_id"], name: "index_invoice_products_on_product_id"

  create_table "invoices", force: :cascade do |t|
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "invoices", ["order_id"], name: "index_invoices_on_order_id"

  create_table "order_products", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "order_products", ["order_id"], name: "index_order_products_on_order_id"
  add_index "order_products", ["product_id"], name: "index_order_products_on_product_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "table"
    t.integer  "establishment_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "state"
  end

  add_index "orders", ["establishment_id"], name: "index_orders_on_establishment_id"

  create_table "product_ingredients", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "ingredient_id"
    t.integer  "quantity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "product_ingredients", ["ingredient_id"], name: "index_product_ingredients_on_ingredient_id"
  add_index "product_ingredients", ["product_id"], name: "index_product_ingredients_on_product_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "precio"
    t.integer  "establishment_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "categorie_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "products", ["establishment_id"], name: "index_products_on_establishment_id"

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "identification_number"
    t.string   "last_name"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "address"
    t.integer  "state_id"
    t.integer  "city_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
