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

ActiveRecord::Schema.define(version: 2021_04_13_154557) do

  create_table "characters", force: :cascade do |t|
    t.string "name", default: "various"
    t.string "publisher"
  end

  create_table "comics", force: :cascade do |t|
    t.string "full_path", null: false
    t.integer "size"
    t.integer "issue_number"
    t.integer "pub_year"
    t.integer "pub_month"
    t.string "extension"
    t.integer "title_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name", default: "unknown"
  end

  create_table "titles", force: :cascade do |t|
    t.string "name"
    t.integer "publisher_id", default: 1
    t.integer "character_id", default: 1
  end

end
