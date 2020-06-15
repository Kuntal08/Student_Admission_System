class Board < ApplicationRecord
  validates :board, presence: true, length: { maximum: 30, minimum: 2 }
end
