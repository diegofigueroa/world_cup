class TeamSerializer < ActiveModel::Serializer
  attributes :name, :group, :description, :coach, :matches, :goals, :flag_url, :photo_url, :goals_url, :matches_url, :url
  
  has_many :goals, :matches
  
  def group
    object.group.name
  end
  
  def url
    team_url(object)
  end
  
  def goals_url
    goals_team_url(object)
  end
  
  def matches_url
    matches_team_url(object)
  end
  
  def include_matches?
    scope.params[:embed].try(:member?, 'matches')
  end
  
  def include_goals?
    scope.params[:embed].try(:member?, 'goals')
  end
end
