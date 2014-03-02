class Team < ActiveRecord::Base
  has_many :players
  has_many :local_matches, class_name: 'Match', foreign_key: :local_id
  has_many :visitor_matches, class_name: 'Match', foreign_key: :visitor_id
  
  has_many :goals
  
  has_one :group_standing
  has_one :group, through: :group_standing
  
  
  validates :name, presence: true, uniqueness: true
  validates :coach, presence: true
  validates :description, presence: true
  validates :flag_url, presence: true
  validates :group, presence: true
  
  def to_param
    name.downcase
  end
  
  def matches
    local_matches + visitor_matches
  end
  
end
