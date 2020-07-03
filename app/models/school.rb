class School < ApplicationRecord
  has_many :divisions
  has_many :seekers
  belongs_to :location
  belongs_to :board
  has_one_attached :image

  validates :image, presence: true
  validates :name, presence: true, length: { maximum: 30, minimum: 2 }
  validates :description, presence: true , length: { maximum: 150, minimum: 5 }

  def self.search(search)
    if search
      location = Location.where('city_name LIKE ?', "%"+search+"%")
      school = School.where('name LIKE ?', "%"+search+"%")
      if school
        self.where(id: school).or(self.where(location_id: location))
      else
        School.all
      end
    else
      School.all
    end
  end
end
