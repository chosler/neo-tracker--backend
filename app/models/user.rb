class User < ApplicationRecord
    has_many :user_tracked_objects
    has_many :near_earth_objects, join_table: :user_tracked_objects
    has_many :exoplanets, join_table: :user_tracked_objects
    has_many :comments

    validates :user_name, uniqueness: true
    validates :user_name, presence: true
    validates :name, presence: true
    
    has_secure_password
end
