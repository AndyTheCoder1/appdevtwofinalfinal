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
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #  after_create do
  #   data = UserDatum.create
  #   data.owner_id = self.id
  #   data.save
  #   end
  
  has_many  :prompts, class_name: "PromptsAnswer", foreign_key: "owner_id", dependent: :destroy

  has_many  :sent_date_requests, class_name: "DateRequest", foreign_key: "sender_id", dependent: :destroy

  has_many  :received_date_requests, class_name: "DateRequest", foreign_key: "recipient_id", dependent: :destroy

  has_many  :own_photos, class_name: "Photo", foreign_key: "owner_id", dependent: :destroy

  has_one   :user_datum, class_name: "UserDatum", foreign_key: "owner_id", dependent: :destroy

  has_many :following, through: :sent_date_requests, source: :recipient

  has_many :followers, through: :received_date_requests, source: :sender

  has_many :feed, through: :following, source: :own_photos


end
