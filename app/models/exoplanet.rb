class Exoplanet < ApplicationRecord
    has_many :usertrackedobjects
    has_many :users, join_table: :usertrackedobjects
    has_many :comments
end
