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

ActiveRecord::Schema[8.0].define(version: 2025_05_08_125845) do
  create_table "enemies", force: :cascade do |t|
    t.string "name"
    t.integer "power_base"
    t.integer "power_step"
    t.integer "level"
    t.integer "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.integer "kind"
    t.integer "level"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "power_base"
    t.integer "power_step"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
