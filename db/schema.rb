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

ActiveRecord::Schema.define(version: 20150419000431) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "created_by"
    t.datetime "begin"
    t.datetime "end"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "courses_subjects", id: false, force: :cascade do |t|
    t.integer "course_id",  null: false
    t.integer "subject_id", null: false
  end

  create_table "courses_users", id: false, force: :cascade do |t|
    t.integer "user_id",   null: false
    t.integer "course_id", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "created_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "subjects_users", id: false, force: :cascade do |t|
    t.integer  "user_id",       null: false
    t.integer  "subject_id",    null: false
    t.integer  "assigned_by"
    t.datetime "time_assigned"
    t.string   "complete"
    t.datetime "time_complete"
    t.string   "confirm"
    t.datetime "time_confirm"
    t.integer  "confirmed_by"
  end

  add_index "subjects_users", ["subject_id", "user_id"], name: "index_subjects_users_on_subject_id_and_user_id"
  add_index "subjects_users", ["user_id", "subject_id"], name: "index_subjects_users_on_user_id_and_subject_id"

  create_table "tasks", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "created_by"
    t.integer  "subject_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "full_name"
    t.datetime "date_of_birth"
    t.string   "role"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "remember_digest"
  end

end
