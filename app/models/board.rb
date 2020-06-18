class Board < ApplicationRecord
  validates :board, presence: true, length: { maximum: 30, minimum: 2 }
  validates :full_form, presence: true, length: { minimum: 5 }
end
