class GroupSerializer < ActiveModel::Serializer
  attributes :name, :teams, :url
  
  has_many :standings
  
  def teams
    object.teams.collect{|t| t.name }
  end
  
  def url
    group_url(object)
  end
end
