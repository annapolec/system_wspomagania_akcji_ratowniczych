class HomeController < ApplicationController
  def index
  	@weather_condition = WeatherCondition.new
  end
end
