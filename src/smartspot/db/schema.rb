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

ActiveRecord::Schema.define(version: 20190324195236) do

  create_table "guest_histories", force: :cascade do |t|
    t.integer  "guest_id"
    t.integer  "vehicle_id"
    t.integer  "parking_spot_id"
    t.datetime "entrance_date"
    t.datetime "exit_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "guest_histories", ["guest_id"], name: "index_guest_histories_on_guest_id"
  add_index "guest_histories", ["parking_spot_id"], name: "index_guest_histories_on_parking_spot_id"
  add_index "guest_histories", ["vehicle_id"], name: "index_guest_histories_on_vehicle_id"

  create_table "guests", force: :cascade do |t|
    t.text     "name"
    t.text     "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_lots", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_spot_sizes", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "parking_spot_statuses", force: :cascade do |t|
    t.text     "description"
    t.boolean  "is_available"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "parking_spots", force: :cascade do |t|
    t.text     "code"
    t.integer  "parking_log_id"
    t.integer  "parking_spot_size_id"
    t.integer  "parking_spot_status_id"
    t.boolean  "is_private"
    t.boolean  "is_for_disability"
    t.boolean  "is_occupied"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "parking_spots", ["parking_log_id"], name: "index_parking_spots_on_parking_log_id"
  add_index "parking_spots", ["parking_spot_size_id"], name: "index_parking_spots_on_parking_spot_size_id"
  add_index "parking_spots", ["parking_spot_status_id"], name: "index_parking_spots_on_parking_spot_status_id"

  create_table "vehicle_brands", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_models", force: :cascade do |t|
    t.integer  "vehicle_brand_id"
    t.text     "name"
    t.integer  "parking_spot_size_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "vehicle_models", ["parking_spot_size_id"], name: "index_vehicle_models_on_parking_spot_size_id"
  add_index "vehicle_models", ["vehicle_brand_id"], name: "index_vehicle_models_on_vehicle_brand_id"

  create_table "vehicles", force: :cascade do |t|
    t.integer  "vehicle_model_id"
    t.text     "licence_plate"
    t.text     "color"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "vehicles", ["vehicle_model_id"], name: "index_vehicles_on_vehicle_model_id"

end
