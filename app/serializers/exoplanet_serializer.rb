class ExoplanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :dist_from_earth, :planet_mass
end
