class Seeker < ApplicationRecord
  belongs_to :school
  belongs_to :board
  belongs_to :division

  validates :first_name, presence: true
  validates :middle_name, presence: true
  validates :last_name, presence: true
  validates :home_address, presence: true, length: { maximum: 50, minimum: 10 }
  validates :email, presence: true
  validates :phone, presence: true, length: { maximum: 10, minimum: 8}
  validates :birth_date, presence: true
  validates :father_name, presence: true
  validates :mother_name, presence: true
  validates :father_employment, presence: true
  validates :mother_employment, presence: true
  
end
