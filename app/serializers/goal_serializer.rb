class GoalSerializer < ActiveModel::Serializer
  attributes :minute, :scorer, :team, :penalty, :own_goal
  
  def team
    object.team.name
  end
  
  def include_penalty?
    !!penalty
  end
  
  def include_own_goal?
    !!own_goal
  end
end
