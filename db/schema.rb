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

ActiveRecord::Schema.define(version: 20160722053316) do

  create_table "admins", force: :cascade do |t|
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
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "answers", force: :cascade do |t|
    t.string   "answer"
    t.integer  "question_id"
    t.string   "question"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "basic_food_items", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.boolean  "is_basic"
    t.integer  "fridge_amount"
    t.integer  "shoppinglist_amount"
    t.integer  "mylist_amount"
    t.string   "measurement_type"
    t.integer  "full_amount"
    t.integer  "current_amount"
    t.integer  "usually_expires"
    t.datetime "expiration_date"
    t.datetime "modified_date"
    t.string   "categories",             default: "--- []\n"
    t.integer  "calories"
    t.float    "total_fat"
    t.float    "saturated_fat"
    t.float    "unsaturated_fat"
    t.integer  "protien"
    t.integer  "carbohydrate"
    t.integer  "fiber"
    t.string   "food_category"
    t.float    "iron"
    t.float    "vitamin_a"
    t.float    "vitamin_b"
    t.float    "vitamin_b6"
    t.float    "vitamin_b12"
    t.float    "vitamin_c"
    t.float    "vitamin_d"
    t.float    "vitamin_e"
    t.float    "vitamin_k"
    t.float    "potassium"
    t.float    "sodium"
    t.float    "niacin"
    t.float    "folate"
    t.float    "zinc"
    t.float    "thiamin"
    t.float    "riboflavin"
    t.float    "calcium"
    t.float    "magnesium"
    t.float    "cholesterol"
    t.float    "caffeine"
    t.string   "five_recipes",           default: "--- []\n"
    t.string   "diets",                  default: "--- []\n"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_url"
    t.string   "food_desc"
    t.integer  "fridge_usually_expires"
  end

  create_table "families", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_items", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "fridge_id"
    t.boolean  "is_basic"
    t.integer  "fridge_amount"
    t.integer  "shoppinglist_amount"
    t.integer  "mylist_amount"
    t.string   "measurement_type"
    t.integer  "full_amount"
    t.integer  "current_amount"
    t.integer  "usually_expires"
    t.datetime "expiration_date"
    t.datetime "modified_date"
    t.string   "categories",          default: "--- []\n"
  end

  create_table "fridges", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "family_id"
  end

  create_table "suggested_food_items", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.boolean  "is_basic"
    t.integer  "fridge_amount"
    t.integer  "shoppinglist_amount"
    t.integer  "mylist_amount"
    t.string   "measurement_type"
    t.integer  "full_amount"
    t.integer  "current_amount"
    t.integer  "usually_expires"
    t.datetime "expiration_date"
    t.datetime "modified_date"
    t.string   "categories",          default: "--- []\n"
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "question"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "stype"
    t.boolean  "pre_question"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "family_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
