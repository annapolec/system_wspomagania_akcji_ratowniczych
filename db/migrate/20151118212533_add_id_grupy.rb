class AddIdGrupy < ActiveRecord::Migration
  def change
  	add_column :tourists, :id_grupy, :integer
  end
end
