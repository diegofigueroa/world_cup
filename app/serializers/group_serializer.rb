class GroupSerializer < ActiveModel::Serializer
  attributes :name, :teams, :standings, :matches, :url
  
  has_many :standings
  has_many :matches
  
  def teams
    object.teams.collect{|t| {name: t.name, url: team_url(t)} }
  end
  
  def url
    group_url(object)
  end
  
  def include_teams?
    !scope.params[:hide].try(:member?, 'teams')
  end
  
  def include_matches?
    scope.params[:embed].try(:member?, 'matches')
  end
  
  def include_standings?
    scope.params[:embed].try(:member?, 'standings')
  end
end
