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

ActiveRecord::Schema.define(version: 20160423003422) do

  create_table "answers", force: :cascade do |t|
    t.integer  "choice_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "answers", ["choice_id"], name: "index_answers_on_choice_id", using: :btree

  create_table "choices", force: :cascade do |t|
    t.string   "img_path",      limit: 255
    t.string   "label",         limit: 255
    t.integer  "question_id",   limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "answers_count", limit: 4,   default: 0, null: false
  end

  add_index "choices", ["question_id"], name: "index_choices_on_question_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "img_path",   limit: 255
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "answers", "choices"
  add_foreign_key "choices", "questions"
end
