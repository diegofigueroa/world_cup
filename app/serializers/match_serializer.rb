class MatchSerializer < ActiveModel::Serializer
  attributes :stage, :group, :local, :visitor, :score, :date, :played, :url
  
  def group
    {name: object.group.name}
  end
  
  def local
    {name: object.local.name}
  end
  
  def visitor
    {name: object.visitor.name}
  end
  
  def score
    {local: object.local_score, visitor: object.visitor_score, }
  end
  
  def url
    match_url(object)
  end
end
