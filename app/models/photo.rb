class Photo < ApplicationRecord


  validates :owner_id, presence: true

  validates :image_one, presence: true


  belongs_to :owner, required: false, class_name: "User", foreign_key: "owner_id", counter_cache: :own_photos_count
end
