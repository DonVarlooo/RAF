class Friend < ApplicationRecord
  CATEGORIES = %w[Sympathetic Alcoholic Cool Mean Grumpy Sleepy Flirty Joyful Copilot Mysterious Sexy Attachiant Mellow Vicious]

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, :category, :price, presence: true

  geocoded_by :postal_address
  after_validation :geocode, if: :will_save_change_to_postal_address?
end
