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

ActiveRecord::Schema.define(version: 20160610053745) do

  create_table "acts", force: :cascade do |t|
    t.string   "time"
    t.text     "do"
    t.string   "see"
    t.string   "where"
    t.string   "day_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dates", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "preview"
    t.string   "neighborhood"
    t.string   "type"
    t.string   "tour_guide_id"
    t.integer  "upvotes"
    t.integer  "downvotes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", force: :cascade do |t|
    t.string   "title"
    t.string   "image_url"
    t.text     "description"
    t.string   "city"
    t.integer  "guide_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guides", force: :cascade do |t|
    t.string   "name"
    t.string   "age"
    t.text     "bio"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.integer  "year"
    t.integer  "duration"
    t.text     "description"
    t.string   "image_url"
    t.integer  "director_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "time"
    t.text     "do"
    t.string   "see"
    t.string   "where"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "day_id"
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
    t.string   "username"
    t.string   "avatar_url"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
