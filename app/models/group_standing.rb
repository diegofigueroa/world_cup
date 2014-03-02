class GroupStanding < ActiveRecord::Base
  belongs_to :team
  belongs_to :group
  
  validates :team, uniqueness: { scope: :group }
end
