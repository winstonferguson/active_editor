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

ActiveRecord::Schema[7.1].define(version: 2024_04_25_132834) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "post_sections", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "section_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_post_sections_on_post_id"
    t.index ["section_id"], name: "index_post_sections_on_section_id"
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.json "blocks"
    t.integer "parent_id"
    t.integer "lft", null: false
    t.integer "rgt", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lft"], name: "index_sections_on_lft"
    t.index ["parent_id"], name: "index_sections_on_parent_id"
    t.index ["rgt"], name: "index_sections_on_rgt"
  end

  add_foreign_key "post_sections", "posts"
  add_foreign_key "post_sections", "sections"
end
