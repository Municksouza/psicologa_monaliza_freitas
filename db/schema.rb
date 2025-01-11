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

ActiveRecord::Schema[8.0].define(version: 2025_01_11_043457) do
  create_table "appointments", force: :cascade do |t|
    t.integer "patient_id", null: false
    t.integer "availability_id", null: false
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["availability_id"], name: "index_appointments_on_availability_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "availabilities", force: :cascade do |t|
    t.integer "psychologist_id", null: false
    t.string "day_of_week"
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["psychologist_id"], name: "index_availabilities_on_psychologist_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
    t.string "phone"
    t.index ["email"], name: "index_patients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

  create_table "psychologists", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_psychologists_on_email", unique: true
    t.index ["reset_password_token"], name: "index_psychologists_on_reset_password_token", unique: true
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "patient_id", null: false
    t.integer "psychologist_id", null: false
    t.integer "score"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_ratings_on_patient_id"
    t.index ["psychologist_id"], name: "index_ratings_on_psychologist_id"
  end

  add_foreign_key "appointments", "availabilities"
  add_foreign_key "appointments", "patients"
  add_foreign_key "availabilities", "psychologists"
  add_foreign_key "ratings", "patients"
  add_foreign_key "ratings", "psychologists"
end
