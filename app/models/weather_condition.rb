class WeatherCondition < ActiveRecord::Base
	#belongs_to :track
	def temperature_rate
	return 1 if (self.temperature >=15 and temperature <=24) or (self.temperature <=5 and self.temperature >=-3)
	return 2 if (self.temperature >24 and self.temperature <=30) or (self.temperature <-3 and self.temperature >=-15)
	return 3 if (self.temperature >30) or (self.temperature < -15)
	end

	def rain_rate
	return 0 if self.rain < 15
	return 1 if self.rain >=15 and self.rain <=40
	return 2 if self.rain > 40 and self.rain <= 70
	return 3 if self.rain >70
	end

	def wind_rate
	return 1 if self.wind <= 30 
	return 2 if self.wind > 30 and self.wind <= 80
	return 3 if self.wind >80
	end
end
