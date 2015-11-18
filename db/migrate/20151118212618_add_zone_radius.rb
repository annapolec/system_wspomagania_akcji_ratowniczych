class AddZoneRadius < ActiveRecord::Migration
  def change
  	add_column :danger_zones, :zone_radius, :integer
  end
end
