class Friend < ApplicationRecord
  CATEGORIES = %w[Sympathique Alcoolique Cool Méchant Grincheux Dormeur Pointeur Joyeux Copilote Mystérieux Dragueur Attachiant Moelleux Vicieux]

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, :category, :price, presence: true

  geocoded_by :postal_address
  after_validation :geocode, if: :will_save_change_to_postal_address?
end
