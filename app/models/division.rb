class Division < ApplicationRecord
  belongs_to :school

  validates :division, presence: true, length: { maximum: 30, minimum: 1 }
  validates :stage, presence: true, length: { maximum: 30, minimum: 2 }
  validates :description, presence: true, length: { maximum: 150, minimum: 5 }
end
