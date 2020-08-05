class CreateExoplanets < ActiveRecord::Migration[6.0]
  def change
    create_table :exoplanets do |t|
      t.string :name
      t.float :dist_from_earth
      t.float :planet_mass

      t.timestamps
    end
  end
end
