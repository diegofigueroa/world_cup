class Match < ActiveRecord::Base
  STAGES = %i(group round_of_16 quarter_finals semi_finals final third_place)
  
  belongs_to :local, class_name: 'Team'
  belongs_to :visitor, class_name: 'Team'
  
  belongs_to :winner, class_name: 'Team'
  belongs_to :loser, class_name: 'Team'
  
  belongs_to :group
  belongs_to :stadium
  
  validates :date, presence: true
  validates :stadium, presence: true
  validates :stage, presence: true
  
  bitmask :stage, as: STAGES
end
