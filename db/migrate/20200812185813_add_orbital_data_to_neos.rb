class AddOrbitalDataToNeos < ActiveRecord::Migration[6.0]
  def change
    add_column :near_earth_objects, :epo, :float
    add_column :near_earth_objects, :sma, :float
    add_column :near_earth_objects, :ecc, :float
    add_column :near_earth_objects, :inc, :float
    add_column :near_earth_objects, :anl, :float
    add_column :near_earth_objects, :pa, :float
    add_column :near_earth_objects, :ma, :float
  end
end
