class AddDefaults < ActiveRecord::Migration[6.1]
  def change
    change_column_default( :user_data, :full_name , "" )
    change_column_default( :user_data, : , default )
    change_column_default( :user_data, : , default )
    change_column_default( :user_data, :, default )
    change_column_default( :user_data, , default )
    change_column_default( :user_data, , default )
    change_column_default( :user_data, , default )
    change_column_default( :user_data, , default )
    
  end
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