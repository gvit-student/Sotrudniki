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

ActiveRecord::Schema.define(version: 20160427192334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dlzhs", force: :cascade do |t|
    t.string   "d_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "status"
    t.boolean  "s_delete"
  end

  create_table "hobbies", force: :cascade do |t|
    t.string   "h_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "status"
    t.boolean  "s_delete"
  end

  create_table "hobby_sotrs", force: :cascade do |t|
    t.integer  "sotr_id"
    t.integer  "hobby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "status"
    t.boolean  "s_delete"
  end

  add_index "hobby_sotrs", ["hobby_id"], name: "index_hobby_sotrs_on_hobby_id", using: :btree
  add_index "hobby_sotrs", ["sotr_id"], name: "index_hobby_sotrs_on_sotr_id", using: :btree

  create_table "pop_hobbies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sotrs", force: :cascade do |t|
    t.string   "s_fam"
    t.string   "s_name"
    t.string   "s_otch"
    t.date     "s_date"
    t.integer  "dlzh_id"
    t.string   "s_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "status"
    t.boolean  "s_delete"
  end

  add_index "sotrs", ["dlzh_id"], name: "index_sotrs_on_dlzh_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "hobby_sotrs", "hobbies"
  add_foreign_key "hobby_sotrs", "sotrs"
  add_foreign_key "sotrs", "dlzhs"
end
