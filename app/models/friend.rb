class Friend < ApplicationRecord
  CATEGORY = %w[Sympa Cool Mechant Grincheux Dormeur]

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, :category, :price, presence: true
end
