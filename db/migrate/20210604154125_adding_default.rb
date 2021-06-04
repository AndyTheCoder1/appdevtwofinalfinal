class AddingDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default( :user_data, :daily_photo_reveals , 3 )
  end
end
