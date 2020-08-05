class CreateUserTrackedObjects < ActiveRecord::Migration[6.0]
  def change
    create_table :user_tracked_objects do |t|
      t.integer :user_id
      t.integer :neo_id
      t.integer :exo_id
      t.string :comment

      t.timestamps
    end
  end
end
