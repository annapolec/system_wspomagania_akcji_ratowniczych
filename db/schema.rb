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

ActiveRecord::Schema.define(version: 20151126104423) do

  create_table "danger_scales", force: :cascade do |t|
    t.integer  "value",      default: 1
    t.integer  "track_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "danger_zones", force: :cascade do |t|
    t.integer  "x"
    t.integer  "y"
    t.integer  "track_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "zone_radius"
  end

  create_table "tourists", force: :cascade do |t|
    t.integer  "x"
    t.integer  "y"
    t.integer  "status"
    t.integer  "track_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "id_grupy"
  end

  create_table "tracks", force: :cascade do |t|
    t.integer  "difficulty_level"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "name"
  end

  create_table "weather_conditions", force: :cascade do |t|
    t.float    "temperature"
    t.float    "rain"
    t.float    "wind"
    t.integer  "track_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "avalanche_danger_level"
  end

end
