class Group < ActiveRecord::Base
  has_many :standings, class_name: 'GroupStanding'
  has_many :teams, through: :standings
  has_many :matches
  
  validates :name, presence: true, uniqueness: true
  
  def to_param
    name.downcase
  end
end
