# == Schema Information
#
# Table name: date_requests
#
#  id           :bigint           not null, primary key
#  sender_id    :integer
#  recipient_id :integer
#  acceptance   :boolean
#  weekly_rose  :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class DateRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
