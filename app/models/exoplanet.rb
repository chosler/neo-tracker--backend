class Exoplanet < ApplicationRecord
    has_many :usertrackedobjects
    has_many :users, join_table: :usertrackedobjects
end
