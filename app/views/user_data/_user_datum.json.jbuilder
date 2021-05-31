json.extract! user_datum, :id, :owner_id, :full_name, :religion, :political_affiliation, :height, :hometown, :age, :job_title, :school, :gender, :drinking, :smoking, :undergrad_school, :daily_photo_reveals, :interested_in_men, :interested_in_women, :interested_in_men_and_women, :created_at, :updated_at
json.url user_datum_url(user_datum, format: :json)
