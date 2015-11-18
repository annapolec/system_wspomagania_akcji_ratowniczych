class AddAvalancheDangerLevel < ActiveRecord::Migration
  def change
  	add_column :weather_conditions, :avalanche_danger_level, :integer
  end
end
