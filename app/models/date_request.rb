class DateRequest < ApplicationRecord

  

validates :sender_id, presence: true

validates :recipient_id, presence: true

validates :recipient_id, uniqueness: { scope: ["sender_id"], message: "already requested" }



belongs_to :sender, required: false, class_name: "User", foreign_key: "sender_id", counter_cache: :sent_date_requests_count

belongs_to :recipient, required: false, class_name: "User", foreign_key: "recipient_id", counter_cache: :received_date_requests_count


end
