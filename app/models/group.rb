class Group < ActiveRecord::Base
  has_many :teams
  
  validates :name, presence: true, uniqueness: true
end
