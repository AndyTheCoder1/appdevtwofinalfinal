class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  

  has_many  :prompts, class_name: "PromptsAnswer", foreign_key: "owner_id", dependent: :destroy

  has_many  :sent_date_requests, class_name: "DateRequest", foreign_key: "sender_id", dependent: :destroy

  has_many  :received_date_requests, class_name: "DateRequest", foreign_key: "recipient_id", dependent: :destroy

  has_many  :own_photos, class_name: "Photo", foreign_key: "owner_id", dependent: :destroy

  has_one   :user_datum, class_name: "UserDatum", foreign_key: "owner_id", dependent: :destroy

  has_many :following, through: :sent_date_requests, source: :recipient

  has_many :followers, through: :received_date_requests, source: :sender

  has_many :feed, through: :following, source: :own_photos


end
