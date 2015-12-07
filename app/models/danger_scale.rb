class DangerScale < ActiveRecord::Base
	#belongs_to :track
	#ogolnie dla calej Babiej Gory
	def DangerScale.calculate_danger_scale
		temperature_rate = WeatherCondition.last.temperature_rate
		rain_rate = WeatherCondition.last.rain_rate
		wind_rate = WeatherCondition.last.wind_rate
		avalanche_danger_level = WeatherCondition.last.avalanche_danger_level

		danger_scale = (temperature_rate + rain_rate + wind_rate + avalanche_danger_level)/4
	end
end
