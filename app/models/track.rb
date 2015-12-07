class Track < ActiveRecord::Base
	#has_one :danger_scale
  #has_one :weather_condition
  has_many :tourists
  has_many :danger_zones
end
