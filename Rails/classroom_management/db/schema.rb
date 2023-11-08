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

ActiveRecord::Schema[7.1].define(version: 2023_11_08_105800) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enrolled_subjects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subjects_id"
    t.index ["subjects_id"], name: "index_enrolled_subjects_on_subjects_id"
  end

  create_table "students", primary_key: "roll_no", id: :string, force: :cascade do |t|
    t.string "name"
    t.date "dob", default: "2023-11-08", null: false
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "teacher_id", null: false
    t.index ["teacher_id"], name: "index_students_on_teacher_id"
  end

  create_table "students_teachers", id: false, force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "student_id", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "sub_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sub_code"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.integer "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subject_id", null: false
    t.index ["subject_id"], name: "index_teachers_on_subject_id"
  end

  add_foreign_key "enrolled_subjects", "subjects", column: "subjects_id"
  add_foreign_key "students", "teachers"
  add_foreign_key "teachers", "subjects"
end
