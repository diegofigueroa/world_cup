class GroupStandingSerializer < ActiveModel::Serializer
  attributes :team, :played, :wins, :loses, :draws, :goals_scored, :goals_against, :goal_average, :points
  
  def team
    object.team.name
  end
  
  def goal_average
    object.goals_scored - object.goals_against
  end
  
end
