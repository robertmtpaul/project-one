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

ActiveRecord::Schema.define(version: 2020_08_12_235434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.text "name"
    t.integer "rank"
    t.text "mercer"
    t.text "image1"
    t.text "image2"
    t.text "internet_speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "costliving"
  end

  create_table "coworking_spaces", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.text "description"
    t.text "reviews"
    t.text "companies"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "URL"
  end

  create_table "favourites", force: :cascade do |t|
    t.text "title"
    t.integer "user_id"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "startups", force: :cascade do |t|
    t.string "name"
    t.integer "city_id"
    t.text "description"
    t.integer "valuation"
    t.text "funding"
    t.text "status"
    t.integer "employees"
    t.string "favourite_id"
    t.string "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "name"
    t.text "image"
    t.text "bio"
    t.text "linkedin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
