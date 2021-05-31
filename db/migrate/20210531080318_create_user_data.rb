class CreateUserData < ActiveRecord::Migration[6.1]
  def change
    create_table :user_data do |t|
      t.integer :owner_id
      t.string :full_name
      t.string :religion
      t.string :political_affiliation
      t.string :height
      t.string :hometown
      t.integer :age
      t.string :job_title
      t.string :school
      t.string :gender
      t.string :drinking
      t.string :smoking
      t.string :undergrad_school
      t.integer :daily_photo_reveals
      t.boolean :interested_in_men
      t.boolean :interested_in_women
      t.boolean :interested_in_men_and_women

      t.timestamps
    end
  end
end
