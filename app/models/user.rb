class User < ApplicationRecord
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :name, presence: true, length: { maximum: 30, minimum: 2 }
  validates :email, presence: true, length: { maximum: 30, minimum: 2 }, uniqueness: { case_sensitive: false } , format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, confirmation: true, on: :create

end
