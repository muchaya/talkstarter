# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_10_02_073047) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "proposals", force: :cascade do |t|
    t.string "status"
    t.string "strategy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.decimal "price"
    t.datetime "accepts_supporters_from"
    t.datetime "accept_supporters_until"
    t.datetime "scheduled_for"
    t.integer "min_supporters"
    t.integer "max_supporters"
    t.string "status"
    t.string "visibility"
    t.string "timezone"
    t.integer "duration_in_minutes"
    t.bigint "proposal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proposal_id"], name: "index_topics_on_proposal_id"
  end

  add_foreign_key "topics", "proposals"
end
