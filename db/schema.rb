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

ActiveRecord::Schema.define(version: 2021_02_01_173957) do

  create_table "colours", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "expense_type_id"
    t.string "primary", null: false
    t.string "gradient", null: false
    t.index ["expense_type_id"], name: "index_colours_on_expense_type_id"
  end

  create_table "colours_expense_types", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "colour_id"
    t.bigint "expense_type_id"
    t.index ["colour_id"], name: "index_colours_expense_types_on_colour_id"
    t.index ["expense_type_id"], name: "index_colours_expense_types_on_expense_type_id"
  end

  create_table "expense_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "expenses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.decimal "amount", precision: 10, scale: 2
    t.date "spent_on", null: false
    t.string "extra_info"
    t.bigint "expense_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["expense_type_id"], name: "index_expenses_on_expense_type_id"
  end

end
