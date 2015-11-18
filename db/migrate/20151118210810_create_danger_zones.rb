class CreateDangerZones < ActiveRecord::Migration
  def change
    create_table :danger_zones do |t|
      t.integer :x
      t.integer :y
      t.integer :track_id

      t.timestamps null: false
    end
  end
end
