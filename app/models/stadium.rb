class Stadium < ActiveRecord::Base
  validates :name, presence: true
  validates :city, presence: true
  validates :capacity, presence: true
  validates :construction_year, presence: true
  validates :image_url, presence: true
  
  has_many :matches
end
