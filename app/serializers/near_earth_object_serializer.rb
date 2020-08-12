class NearEarthObjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :dist_from_earth, :diameter_min, :diameter_max, :hazardous, :comments, :epo, :sma, :ecc, :inc, :anl, :pa, :ma
end
