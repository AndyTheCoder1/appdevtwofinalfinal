# == Schema Information
#
# Table name: user_data
#
#  id                          :bigint           not null, primary key
#  owner_id                    :integer
#  full_name                   :string
#  religion                    :string
#  political_affiliation       :string
#  height                      :string
#  hometown                    :string
#  age                         :integer
#  job_title                   :string
#  school                      :string
#  gender                      :string
#  drinking                    :string
#  smoking                     :string
#  undergrad_school            :string
#  daily_photo_reveals         :integer
#  interested_in_men           :boolean
#  interested_in_women         :boolean
#  interested_in_men_and_women :boolean
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#
class UserDatum < ApplicationRecord
  belongs_to :owner, required: false, class_name: "User", foreign_key: "owner_id"
end
