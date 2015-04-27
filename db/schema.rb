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

ActiveRecord::Schema.define(version: 20150427214819) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fruits", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fruits_smoothies", id: false, force: :cascade do |t|
    t.integer "fruit_id"
    t.integer "smoothie_id"
  end

  add_index "fruits_smoothies", ["fruit_id"], name: "index_fruits_smoothies_on_fruit_id", using: :btree
  add_index "fruits_smoothies", ["smoothie_id"], name: "index_fruits_smoothies_on_smoothie_id", using: :btree

  create_table "smoothies", force: :cascade do |t|
    t.string   "name"
    t.integer  "calories"
    t.float    "total_fat"
    t.integer  "carbs"
    t.integer  "sugar"
    t.integer  "fiber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
