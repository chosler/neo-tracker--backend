class CreateNearEarthObjects < ActiveRecord::Migration[6.0]
  def change
    create_table :near_earth_objects do |t|
      t.string :name
      t.float :dist_from_earth
      t.float :diameter_min
      t.float :diameter_max
      t.boolean :hazardous
      

      t.timestamps
    end
  end
end
