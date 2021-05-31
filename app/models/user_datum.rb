class UserDatum < ApplicationRecord
  belongs_to :owner, required: false, class_name: "User", foreign_key: "owner_id"
end
