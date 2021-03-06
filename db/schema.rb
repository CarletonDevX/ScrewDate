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

ActiveRecord::Schema.define(version: 20150104234248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dorms", force: true do |t|
    t.string "dorm_name"
  end

  create_table "majors", force: true do |t|
    t.string "major_name"
  end

  create_table "majors_students", id: false, force: true do |t|
    t.integer "student_id"
    t.integer "major_id"
  end

  add_index "majors_students", ["major_id"], name: "index_majors_students_on_major_id", using: :btree
  add_index "majors_students", ["student_id"], name: "index_majors_students_on_student_id", using: :btree

  create_table "students", force: true do |t|
    t.string  "student_name"
    t.integer "dorm_floor"
    t.string  "dorm_room_number"
    t.string  "student_email"
    t.boolean "available",        default: false
    t.boolean "taken",            default: false
    t.boolean "confirmed",        default: false
    t.integer "class_year"
    t.integer "proxy_id"
    t.integer "date_id"
    t.integer "dorm_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
