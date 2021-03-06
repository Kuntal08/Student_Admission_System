class Seeker < ApplicationRecord
  belongs_to :school
  belongs_to :division

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :home_address, presence: true, length: { minimum: 10 }
  validates :email, presence: true
  validates :phone, presence: true, length: { is: 10 }
  validates :birth_date, presence: true
  validates :father_name, presence: true
  validates :mother_name, presence: true
  validates :father_employment, presence: true
  validates :mother_employment, presence: true

end
