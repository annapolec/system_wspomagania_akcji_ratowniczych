class CreateDangerScales < ActiveRecord::Migration
  def change
    create_table :danger_scales do |t|
      t.integer :value, default: 1
      t.integer :track_id

      t.timestamps null: false
    end
  end
end
