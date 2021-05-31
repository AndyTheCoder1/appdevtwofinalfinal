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
require "test_helper"

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
