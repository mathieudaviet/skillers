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

ActiveRecord::Schema.define(version: 20161230044547) do

  create_table "exercises", force: :cascade do |t|
    t.text    "statement"
    t.string  "function"
    t.integer "language_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "codemirror"
  end

  create_table "links", force: :cascade do |t|
    t.integer "test_id"
    t.integer "exercise_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string   "company"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "creator_email"
    t.string   "key"
  end

end
