class Friend < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, :category, :price, :user_id, presence: true
end