class Player < ActiveRecord::Base
  belongs_to :team
  
  validates :name, presence: true
  validates :birthday, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :squad_number, presence: true
  validates :photo_url, presence: true
  
  validates :team, presence: true
end
