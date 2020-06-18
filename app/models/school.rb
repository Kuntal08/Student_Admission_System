class School < ApplicationRecord
  has_many :divisions
  has_one_attached :image
  validates :image, presence: true
  validates :name, presence: true, length: { maximum: 30, minimum: 2 }
  validates :description, presence: true, length: { maximum: 50, minimum: 5 }
end
