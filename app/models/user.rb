class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :friends, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :encrypted_password, :user_name, presence: true

  # geocoded_by :postal_address
  # after_validation :geocode, if: :will_save_change_to_postal_address?

end
