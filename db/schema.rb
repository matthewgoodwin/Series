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

ActiveRecord::Schema.define(version: 20170201114830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_show_id"
    t.string   "phrase"
    t.integer  "rating"
    t.string   "standout"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_show_id"], name: "index_reviews_on_user_show_id", using: :btree
  end

  create_table "shows", force: :cascade do |t|
    t.string   "imdb"
    t.integer  "tvrage"
    t.integer  "thetvdb"
    t.string   "title"
    t.string   "type"
    t.string   "runtime"
    t.string   "language"
    t.string   "genre"
    t.string   "status"
    t.string   "premiered"
    t.string   "network"
    t.string   "poster"
    t.string   "backdrop"
    t.string   "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "lgposter"
  end

  create_table "user_shows", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["show_id"], name: "index_user_shows_on_show_id", using: :btree
    t.index ["user_id"], name: "index_user_shows_on_user_id", using: :btree
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "reviews", "user_shows"
  add_foreign_key "user_shows", "shows"
  add_foreign_key "user_shows", "users"
end
