class Board < ApplicationRecord
  has_many :seekers, dependent: :destroy
  has_many :schools, dependent: :destroy
  has_many :locations, through: :schools

  validates :board, presence: true, length: { maximum: 30, minimum: 2 }
  validates :full_form, presence: true, length: { minimum: 5 }
end
