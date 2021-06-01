# == Schema Information
#
# Table name: photos
#
#  id          :bigint           not null, primary key
#  caption     :string
#  image_one   :string
#  owner_id    :integer
#  location    :string
#  image_two   :string
#  image_three :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Photo < ApplicationRecord


  validates :owner_id, presence: true

  validates :image_one, presence: true


  belongs_to :owner, required: false, class_name: "User", foreign_key: "owner_id", counter_cache: :own_photos_count

  mount_uploader :avatar, PhotooneUploader
end
