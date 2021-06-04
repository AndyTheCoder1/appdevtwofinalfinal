class AddNewDefault < ActiveRecord::Migration[6.1]
   def change
    change_column_default( :user_data, :full_name , " " )
    change_column_default( :user_data, :religion , " " )
    change_column_default( :user_data, :political_affiliation , " " )
    change_column_default( :user_data, :height, " " )
    change_column_default( :user_data, :hometown, " " )
    change_column_default( :user_data, :age, " " )
    change_column_default( :user_data, :job_title, " " )
    change_column_default( :user_data, :school, " " )
    change_column_default( :user_data, :gender, " " )
    change_column_default( :user_data, :drinking, " " )
    change_column_default( :user_data, :smoking, " " )
    change_column_default( :user_data, :undergrad_school, " ")
    change_column_default( :user_data, :interested_in_men, true )
    change_column_default( :user_data, :interested_in_women, false )
    change_column_default( :user_data, :interested_in_men_and_women, false )


    
  end
end
