class Team < ActiveRecord::Base
  has_many :players
  belongs_to :group
  
  validates :name, presence: true, uniqueness: true
  validates :coach, presence: true
  validates :description, presence: true
  validates :flag_url, presence: true
  validates :group, presence: true
end
