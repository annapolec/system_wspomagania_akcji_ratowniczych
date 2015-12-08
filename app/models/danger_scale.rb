class DangerScale < ActiveRecord::Base
	#belongs_to :track
	#ogolnie dla calej Babiej Gory
	def DangerScale.calculate_danger_scale(weather_condition)
		weather_condition = WeatherCondition.find(weather_condition.id)
		temperature_rate = weather_condition.temperature_rate
		rain_rate = weather_condition.rain_rate
		wind_rate = weather_condition.wind_rate
		avalanche_danger_level = weather_condition.avalanche_danger_level

		danger_scale = (temperature_rate + rain_rate + wind_rate + avalanche_danger_level)/4
	end
end
