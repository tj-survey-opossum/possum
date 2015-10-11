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

ActiveRecord::Schema.define(version: 20151011124305) do

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "survey_id"
    t.string   "question_type"
    t.string   "prompt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.boolean  "required"
  end

  create_table "replies", force: :cascade do |t|
    t.integer  "question_id"
    t.string   "question_reply"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.integer  "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.integer  "author_id"
    t.string   "title"
    t.string   "description"
    t.boolean  "published"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
