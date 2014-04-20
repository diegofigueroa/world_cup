class StadiumSerializer < ActiveModel::Serializer
  attributes :name, :city, :construction_year, :capacity, :matches, :image_url, :url
  has_many :matches
  
  def url
    stadium_url(object)
  end
  
  def include_matches?
    scope.params[:embed].try(:member?, 'matches')
  end
  
end
