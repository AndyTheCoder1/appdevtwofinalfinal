# == Schema Information
#
# Table name: user_data
#
#  id                          :bigint           not null, primary key
#  age                         :integer
#  daily_photo_reveals         :integer
#  drinking                    :string           default(" ")
#  full_name                   :string           default(" ")
#  gender                      :string           default(" ")
#  height                      :string           default(" ")
#  hometown                    :string           default(" ")
#  interested_in_men           :boolean          default(TRUE)
#  interested_in_men_and_women :boolean          default(FALSE)
#  interested_in_women         :boolean          default(FALSE)
#  job_title                   :string           default(" ")
#  political_affiliation       :string           default(" ")
#  religion                    :string           default(" ")
#  school                      :string           default(" ")
#  smoking                     :string           default(" ")
#  undergrad_school            :string           default(" ")
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  owner_id                    :integer
#
class UserDatum < ApplicationRecord
  belongs_to :owner, required: false, class_name: "User", foreign_key: "owner_id"
end
