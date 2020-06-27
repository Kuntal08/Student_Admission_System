class Board < ApplicationRecord
  has_many :seekers
  has_many :schools
  has_many :locations, through: :schools

  validates :board, presence: true, length: { maximum: 30, minimum: 2 }
  validates :full_form, presence: true, length: { minimum: 5 }
end
