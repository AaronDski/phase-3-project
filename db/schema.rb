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

ActiveRecord::Schema.define(version: 2021_08_24_183755) do

  create_table "carts", force: :cascade do |t|
    t.string "item_name"
    t.string "make"
    t.string "model"
    t.integer "year"
    t.float "price"
    t.integer "user_id"
    t.integer "part_id"
    t.index ["part_id"], name: "index_carts_on_part_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "item_name"
    t.string "make"
    t.string "model"
    t.integer "year"
    t.float "price"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
