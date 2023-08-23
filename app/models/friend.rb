class Friend < ApplicationRecord
  CATEGORIES = %w[Sympathique Alcoolique Cool Méchant Grincheux Dormeur Pointeur Joyeux Copilote Mystérieux Dragueur Attachiant Moelleux Vicieux Karaokeur]

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, :category, :price, presence: true
end
