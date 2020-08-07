class NearEarthObject < ApplicationRecord
    has_many :user_tracked_objects
    has_many :users, join_table: :user_tracked_objects
    has_many :comments
end
