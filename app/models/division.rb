class Division < ApplicationRecord
  has_many :seekers, dependent: :destroy

  validates :division, presence: true
  validates :stage, presence: true
  validates :description, presence: true
end
