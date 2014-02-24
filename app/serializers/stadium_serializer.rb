class StadiumSerializer < ActiveModel::Serializer
  attributes :name, :city, :construction_year, :capacity, :image_url, :url
  
  def url
    stadium_url(object)
  end
end
