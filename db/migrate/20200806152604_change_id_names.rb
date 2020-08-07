class ChangeIdNames < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_tracked_objects, :neo_id, :near_earth_object_id
    rename_column :user_tracked_objects, :exo_id, :exoplanet_id
  end
end
