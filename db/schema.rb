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

ActiveRecord::Schema.define(version: 2019_06_19_131529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "cpf", default: "", null: false
    t.string "nome", default: "", null: false
    t.string "cep", default: ""
    t.string "end_logr", default: ""
    t.integer "end_num"
    t.string "end_compl", default: ""
    t.string "end_cid", default: ""
    t.string "end_ug", default: ""
    t.string "tel_fixo", default: ""
    t.string "tel_cel", default: ""
    t.string "tel_trab", default: ""
    t.date "dt_nasc"
    t.string "email", default: ""
    t.string "rg", default: ""
    t.string "rg_emissor", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.bigint "stock_id"
    t.bigint "customer_id"
    t.integer "quantidade", default: 1
    t.boolean "efetivado", default: false
    t.bigint "purchase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_items_on_customer_id"
    t.index ["purchase_id"], name: "index_items_on_purchase_id"
    t.index ["stock_id"], name: "index_items_on_stock_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "referencia"
    t.string "descricao"
    t.string "cor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string "nome", default: ""
    t.string "cpf", default: ""
    t.string "cnpj", default: ""
    t.string "cep", default: ""
    t.string "end_logr", default: ""
    t.integer "end_num"
    t.string "end_compl", default: ""
    t.string "end_cid", default: ""
    t.string "end_ug", default: ""
    t.string "tel_fixo", default: ""
    t.string "tel_cel", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "user_id"
    t.float "total_compra"
    t.string "tipo_pagamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_purchases_on_customer_id"
    t.index ["user_id"], name: "index_purchases_on_user_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "quantidade"
    t.string "tamanho"
    t.date "dt_entrada"
    t.bigint "provider_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "preco_cents"
    t.index ["product_id"], name: "index_stocks_on_product_id"
    t.index ["provider_id"], name: "index_stocks_on_provider_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
    t.string "nome"
    t.string "cpf"
    t.string "cep"
    t.string "end_logr"
    t.integer "end_num"
    t.string "end_compl"
    t.string "end_cid"
    t.string "end_ug"
    t.string "tel_fixo"
    t.string "tel_cel"
    t.date "dt_nasc"
    t.integer "rg"
    t.string "rg_emissor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "items", "customers"
  add_foreign_key "items", "purchases"
  add_foreign_key "items", "stocks"
  add_foreign_key "purchases", "customers"
  add_foreign_key "purchases", "users"
  add_foreign_key "stocks", "products"
  add_foreign_key "stocks", "providers"
end
