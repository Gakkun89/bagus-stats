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

ActiveRecord::Schema[8.0].define(version: 2024_11_25_021209) do
  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string "name"
    t.boolean "drop_in"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer "result"
    t.text "notes"
    t.boolean "completed"
    t.boolean "rx"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "participant_id"
    t.integer "workout_id"
    t.index ["participant_id"], name: "index_results_on_participant_id"
    t.index ["workout_id"], name: "index_results_on_workout_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.integer "number"
    t.integer "reps"
    t.integer "order"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "workout_id"
    t.integer "exercise_id"
    t.index ["exercise_id"], name: "index_rounds_on_exercise_id"
    t.index ["workout_id"], name: "index_rounds_on_workout_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "ip_address"
    t.string "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
  end

  create_table "workouts", force: :cascade do |t|
    t.datetime "date"
    t.integer "variety"
    t.string "name"
    t.integer "time_cap"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "results", "participants"
  add_foreign_key "results", "workouts"
  add_foreign_key "rounds", "exercises"
  add_foreign_key "rounds", "workouts"
  add_foreign_key "sessions", "users"
end
