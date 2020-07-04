class Location < ApplicationRecord
  has_many :schools, dependent: :destroy
  has_many :boards, through: :schools

  validates :city_name, presence: true, length: { maximum: 15, minimum: 2 }
  validates :country_name, presence: true, length: { maximum: 30, minimum: 2 }
  validates :pin, presence: true, length: { maximum: 6 }
end
