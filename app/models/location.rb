class Location < ApplicationRecord
  has_many :schools, dependent: :destroy
  has_many :boards, through: :schools

  validates :city_name, presence: true, length: { maximum: 15 }
  validates :country_name, presence: true, length: { maximum: 20 }
  validates :pin, presence: true, length: { minimum: 6 }
end
