class GroupSerializer < ActiveModel::Serializer
  attributes :name, :teams, :url
  
  def teams
    object.teams.collect{|t| {name: t.name, url: team_url(t)}}
  end
  
  def url
    group_url(object)
  end
end
