class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user, :near_earth_object, :exoplanet, :comm_content
end
