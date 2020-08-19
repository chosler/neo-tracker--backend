# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_14_181234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "near_earth_object_id"
    t.integer "exoplanet_id"
    t.string "comm_content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "likes", default: 0
  end

  create_table "exoplanets", force: :cascade do |t|
    t.string "name"
    t.float "dist_from_earth"
    t.float "planet_mass"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "near_earth_objects", force: :cascade do |t|
    t.string "name"
    t.float "dist_from_earth"
    t.float "diameter_min"
    t.float "diameter_max"
    t.boolean "hazardous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "epo"
    t.float "sma"
    t.float "ecc"
    t.float "inc"
    t.float "anl"
    t.float "pa"
    t.float "ma"
  end

  create_table "user_tracked_objects", force: :cascade do |t|
    t.integer "user_id"
    t.integer "near_earth_object_id"
    t.integer "exoplanet_id"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "profile_pic_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "user_name"
  end

end
