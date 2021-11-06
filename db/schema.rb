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

ActiveRecord::Schema.define(version: 2021_11_05_004416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "backgrounds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_url"
  end

  create_table "card_backgrounds", force: :cascade do |t|
    t.bigint "card_id", null: false
    t.bigint "background_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["background_id"], name: "index_card_backgrounds_on_background_id"
    t.index ["card_id"], name: "index_card_backgrounds_on_card_id"
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "element_positions", force: :cascade do |t|
    t.integer "xPosition"
    t.integer "yPosition"
    t.bigint "card_id", null: false
    t.bigint "element_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "xOffset"
    t.integer "yOffset"
    t.integer "imageSize"
    t.string "name"
    t.index ["card_id"], name: "index_element_positions_on_card_id"
    t.index ["element_id"], name: "index_element_positions_on_element_id"
  end

  create_table "elements", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "card_backgrounds", "backgrounds"
  add_foreign_key "card_backgrounds", "cards"
  add_foreign_key "element_positions", "cards"
  add_foreign_key "element_positions", "elements"
end
