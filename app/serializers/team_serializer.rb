class TeamSerializer < ActiveModel::Serializer
  attributes :name, :group, :description, :coach, :flag_url, :photo_url, :goals_url, :url
  
  def group
    object.group.name
  end
  
  def url
    team_url(object)
  end
  
  def goals_url
    goals_team_url(object)
  end
end
