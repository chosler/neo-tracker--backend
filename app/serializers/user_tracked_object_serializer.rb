class UserTrackedObjectSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :near_earth_object_id, :exoplanet_id, :comment, :user, :near_earth_object, :exoplanet
end
