class DangerScale < ActiveRecord::Base
	#belongs_to :track
	#ogolnie dla calej Babiej Gory
	def DangerScale.calculate_danger_scale
		temperature = WeatherCondition.last.temperature
		rain = WeatherCondition.last.rain
		wind = WeatherCondition.last.wind
		avalanche_danger_level = WeatherCondition.last.avalanche_danger_level

		danger_scale = (temperature + rain + wind + avalanche_danger_level)/4
	end
end
