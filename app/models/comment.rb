class Comment < ApplicationRecord
    belongs_to :user, foreign_key: "user_id"
    belongs_to :near_earth_object, foreign_key: "near_earth_object_id", optional:true
    belongs_to :exoplanet, foreign_key: "exoplanet_id", optional: true
end
