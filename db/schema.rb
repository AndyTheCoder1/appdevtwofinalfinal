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

ActiveRecord::Schema.define(version: 2021_05_31_080318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "date_requests", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.boolean "acceptance"
    t.boolean "weekly_rose"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "caption"
    t.string "image_one"
    t.integer "owner_id"
    t.string "location"
    t.string "image_two"
    t.string "image_three"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prompts", force: :cascade do |t|
    t.string "questions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prompts_answers", force: :cascade do |t|
    t.text "prompt_one"
    t.integer "owner_id"
    t.integer "prompt_id"
    t.string "prompt_two"
    t.string "prompt_three"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_data", force: :cascade do |t|
    t.integer "owner_id"
    t.string "full_name"
    t.string "religion"
    t.string "political_affiliation"
    t.string "height"
    t.string "hometown"
    t.integer "age"
    t.string "job_title"
    t.string "school"
    t.string "gender"
    t.string "drinking"
    t.string "smoking"
    t.string "undergrad_school"
    t.integer "daily_photo_reveals"
    t.boolean "interested_in_men"
    t.boolean "interested_in_women"
    t.boolean "interested_in_men_and_women"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sent_date_requests_count", default: 0
    t.integer "received_date_requests_count", default: 0
    t.integer "own_photos_count", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
