class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :near_earth_object_id
      t.integer :exoplanet_id
      t.string :comm_content

      t.timestamps
    end
  end
end
