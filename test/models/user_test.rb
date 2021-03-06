# == Schema Information
#
# Table name: users
#
#  id                           :bigint           not null, primary key
#  email                        :string           default(""), not null
#  encrypted_password           :string           default(""), not null
#  own_photos_count             :integer          default(0)
#  received_date_requests_count :integer          default(0)
#  remember_created_at          :datetime
#  reset_password_sent_at       :datetime
#  reset_password_token         :string
#  sent_date_requests_count     :integer          default(0)
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
