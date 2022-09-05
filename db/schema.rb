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

ActiveRecord::Schema[7.0].define(version: 2022_09_02_091706) do
  create_table "cards", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "multiverse_id"
    t.json "layout"
    t.string "names"
    t.decimal "mana_cost", precision: 10
    t.decimal "cmc", precision: 10
    t.string "colors"
    t.integer "color_identity"
    t.string "type"
    t.string "supertypes"
    t.string "subtypes"
    t.string "rarity"
    t.text "text"
    t.string "flavor"
    t.string "artist"
    t.integer "number"
    t.string "power"
    t.string "toughness"
    t.string "loyalty"
    t.string "variations"
    t.string "watermark"
    t.string "border"
    t.datetime "timeshifted"
    t.string "hand"
    t.string "life"
    t.string "reserved"
    t.datetime "release_date"
    t.string "starter"
    t.string "rulings"
    t.string "foreign_names"
    t.string "printings"
    t.string "original_text"
    t.string "original_type"
    t.string "legalities"
    t.string "source"
    t.string "image_url"
    t.string "set"
    t.string "set_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "changelogs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "version"
    t.string "release_date"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foreign_names", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "language"
    t.string "name"
    t.integer "multiverse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legalities", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "format"
    t.string "legality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rulings", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "gatherer_code"
    t.string "old_code"
    t.string "magic_cards_info_code"
    t.datetime "release_date"
    t.string "border"
    t.string "type"
    t.string "block"
    t.string "online_only"
    t.string "booster"
    t.string "mkm_id"
    t.string "mkm_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subtypes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supertypes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
