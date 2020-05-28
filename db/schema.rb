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

ActiveRecord::Schema.define(version: 2020_05_28_120132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.integer "priority", null: false
    t.index ["name"], name: "index_categories_on_name", unique: true
    t.index ["priority"], name: "index_categories_on_priority", unique: true
  end

  create_table "categories_reviews", id: false, force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "review_id", null: false
    t.index ["category_id", "review_id"], name: "index_categories_reviews_on_category_id_and_review_id"
    t.index ["category_id"], name: "index_categories_reviews_on_category_id"
    t.index ["review_id"], name: "index_categories_reviews_on_review_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "author_id", null: false
    t.string "title", limit: 120, null: false
    t.text "text", null: false
    t.string "image", default: "default.png"
    t.datetime "created_at", null: false
    t.index ["author_id"], name: "index_reviews_on_author_id"
    t.index ["title"], name: "index_reviews_on_title"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.index ["name"], name: "index_users_on_name"
  end

  add_foreign_key "reviews", "users", column: "author_id"
end
