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

ActiveRecord::Schema.define(version: 20150504175513) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "created_by"
    t.datetime "begin"
    t.datetime "end"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["user_id"], name: "index_courses_on_user_id"

  create_table "courses_subjects", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses_subjects", ["course_id"], name: "index_courses_subjects_on_course_id"
  add_index "courses_subjects", ["subject_id"], name: "index_courses_subjects_on_subject_id"

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "created_by"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["user_id"], name: "index_subjects_on_user_id"

  create_table "supervisors_courses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "created_by"
    t.integer  "subject_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["subject_id"], name: "index_tasks_on_subject_id"
  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "full_name"
    t.date     "date_of_birth"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email"

  create_table "users_courses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "assigned_by"
    t.datetime "time_assigned"
    t.string   "complete"
    t.datetime "time_complete"
    t.string   "confirm"
    t.datetime "time_confirm"
    t.integer  "confirmed_by"
    t.integer  "supervisors_courses_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users_courses", ["course_id"], name: "index_users_courses_on_course_id"
  add_index "users_courses", ["supervisors_courses_id"], name: "index_users_courses_on_supervisors_courses_id"
  add_index "users_courses", ["user_id"], name: "index_users_courses_on_user_id"

  create_table "users_subjects", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.integer  "assigned_by"
    t.datetime "time_assigned"
    t.string   "complete"
    t.datetime "time_complete"
    t.string   "confirm"
    t.datetime "time_confirm"
    t.integer  "confirmed_by"
    t.integer  "supervisors_courses_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users_subjects", ["subject_id"], name: "index_users_subjects_on_subject_id"
  add_index "users_subjects", ["supervisors_courses_id"], name: "index_users_subjects_on_supervisors_courses_id"
  add_index "users_subjects", ["user_id"], name: "index_users_subjects_on_user_id"

  create_table "users_tasks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.string   "complete"
    t.datetime "time_complete"
    t.string   "confirm"
    t.datetime "time_confirm"
    t.integer  "confirmed_by"
    t.integer  "supervisors_courses_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users_tasks", ["supervisors_courses_id"], name: "index_users_tasks_on_supervisors_courses_id"
  add_index "users_tasks", ["task_id"], name: "index_users_tasks_on_task_id"
  add_index "users_tasks", ["user_id"], name: "index_users_tasks_on_user_id"

end
