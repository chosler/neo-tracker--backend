# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "uri"
require "net/http"

NearEarthObject.destroy_all
User.destroy_all
UserTrackedObject.destroy_all
Comment.destroy_all

api_key = ENV['nasa_open_api']
info = URI.parse("https://api.nasa.gov/neo/rest/v1/neo/browse?api_key=#{api_key}")
response = Net::HTTP.get_response(info)
neo_info = JSON.parse(response.body)

neo_info["near_earth_objects"].each do |neo|

    name = neo["name"]

    diameter_max = neo["estimated_diameter"]["kilometers"]["estimated_diameter_max"]

    diameter_min = neo["estimated_diameter"]["kilometers"]["estimated_diameter_min"]

    dist_from_earth = 1.3 - (neo["orbital_data"]["perihelion_distance"]).to_f

    hazardous = neo["is_potentially_hazardous_asteroid"]

    epo = neo["orbital_data"]["epoch_osculation"]

    sma = neo["orbital_data"]["semi_major_axis"]

    ecc = neo["orbital_data"]["eccentricity"]

    inc = neo["orbital_data"]["inclination"]

    anl = neo["orbital_data"]["ascending_node_longitude"]

    pa = neo["orbital_data"]["perihelion_argument"]

    ma = neo["orbital_data"]["mean_anomaly"]

    NearEarthObject.where(name: name, diameter_max: diameter_max, diameter_min: diameter_min, dist_from_earth: dist_from_earth, hazardous: hazardous, epo: epo, sma: sma, ecc: ecc, inc: inc, anl: anl, pa: pa, ma: ma).first_or_create

end

user1 = User.create(name: "Bob", profile_pic_url: "https://upload.wikimedia.org/wikipedia/commons/a/a9/Macaca_sinica_-_01.jpg")
user2 = User.create(name: 'Mike', profile_pic_url: '')

neo1 = NearEarthObject.all.sample
neo2 = NearEarthObject.all.sample

user_tracked1 = UserTrackedObject.create(user_id: user1.id, near_earth_object_id: neo1.id)
user_tracked2 = UserTrackedObject.create(user_id: user2.id, near_earth_object_id: neo2.id)