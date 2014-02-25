class MatchSerializer < ActiveModel::Serializer
  attributes :group, :teams, :score, :stadium, :stage, :state, :date, :url
  
  def group
    { name: object.group.name }
  end
  
  def teams
    { local: object.local.name, visitor: object.visitor.name }
  end
  
  def score
    { local: object.local_score, visitor: object.visitor_score }
  end
  
  def stadium
    { name: object.stadium.name }
  end
  
  def state
    object.state.first
  end
  
  def stage
    object.stage.first
  end
  
  def url
    match_url(object)
  end
  
  def include_score?
    object.state? :in_progress
  end
  
  def include_group?
    !object.stage? :group
  end
end
