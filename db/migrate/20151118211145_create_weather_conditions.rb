class CreateWeatherConditions < ActiveRecord::Migration
  def change
    create_table :weather_conditions do |t|
      t.float :temperature
      t.float :rain
      t.float :wind
      t.integer :track_id

      t.timestamps null: false
    end
  end
end
