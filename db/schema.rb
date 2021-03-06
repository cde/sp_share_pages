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

ActiveRecord::Schema.define(version: 20150219005639) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "default_bg_color"
    t.string   "default_button_color"
  end

  create_table "page_wrappers", force: :cascade do |t|
    t.text     "header"
    t.text     "footer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.boolean  "archived"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "share_button"
  end

  add_index "pages", ["organization_id"], name: "index_pages_on_organization_id", using: :btree

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "site_url"
    t.string   "parameters"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shares", force: :cascade do |t|
    t.string   "parameters"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shares", ["page_id"], name: "index_shares_on_page_id", using: :btree

  create_table "variants", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "parameters"
    t.integer  "provider_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "variants", ["provider_id"], name: "index_variants_on_provider_id", using: :btree

  create_table "visits", force: :cascade do |t|
    t.string   "location"
    t.string   "parameters"
    t.string   "technology"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "visits", ["page_id"], name: "index_visits_on_page_id", using: :btree

end
