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

ActiveRecord::Schema.define(version: 20161030205929) do

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
    t.boolean  "is_new"
    t.float    "measurement_number"
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

  create_table "oauth_access_grants", force: :cascade do |t|
    t.integer  "resource_owner_id", null: false
    t.integer  "application_id",    null: false
    t.string   "token",             null: false
    t.integer  "expires_in",        null: false
    t.text     "redirect_uri",      null: false
    t.datetime "created_at",        null: false
    t.datetime "revoked_at"
    t.string   "scopes"
  end

  add_index "oauth_access_grants", ["token"], name: "index_oauth_access_grants_on_token", unique: true

  create_table "oauth_access_tokens", force: :cascade do |t|
    t.integer  "resource_owner_id"
    t.integer  "application_id"
    t.string   "token",                               null: false
    t.string   "refresh_token"
    t.integer  "expires_in"
    t.datetime "revoked_at"
    t.datetime "created_at",                          null: false
    t.string   "scopes"
    t.string   "previous_refresh_token", default: "", null: false
  end

  add_index "oauth_access_tokens", ["refresh_token"], name: "index_oauth_access_tokens_on_refresh_token", unique: true
  add_index "oauth_access_tokens", ["resource_owner_id"], name: "index_oauth_access_tokens_on_resource_owner_id"
  add_index "oauth_access_tokens", ["token"], name: "index_oauth_access_tokens_on_token", unique: true

  create_table "oauth_applications", force: :cascade do |t|
    t.string   "name",                      null: false
    t.string   "uid",                       null: false
    t.string   "secret",                    null: false
    t.text     "redirect_uri",              null: false
    t.string   "scopes",       default: "", null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "oauth_applications", ["uid"], name: "index_oauth_applications_on_uid", unique: true

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
    t.string   "option1"
    t.string   "option2"
    t.string   "option3"
    t.string   "option4"
    t.string   "option5"
    t.string   "note"
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
    t.string   "access_token"
    t.datetime "token_expires_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
