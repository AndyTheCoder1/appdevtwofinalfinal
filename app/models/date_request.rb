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
class DateRequest < ApplicationRecord

  

validates :sender_id, presence: true

validates :recipient_id, presence: true

validates :recipient_id, uniqueness: { scope: ["sender_id"], message: "already requested" }



belongs_to :sender, required: false, class_name: "User", foreign_key: "sender_id", counter_cache: :sent_date_requests_count

belongs_to :recipient, required: false, class_name: "User", foreign_key: "recipient_id", counter_cache: :received_date_requests_count


end
