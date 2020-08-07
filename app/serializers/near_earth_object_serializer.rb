class NearEarthObjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :dist_from_earth, :diameter_min, :diameter_max, :hazardous
end
