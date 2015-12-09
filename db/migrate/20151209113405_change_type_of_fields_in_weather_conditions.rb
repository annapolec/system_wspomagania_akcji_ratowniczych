class ChangeTypeOfFieldsInWeatherConditions < ActiveRecord::Migration
  def change
  	change_column :weather_conditions, :temperature, :integer
  	change_column :weather_conditions, :wind, :integer
  	change_column :weather_conditions, :rain, :integer
  end
end
