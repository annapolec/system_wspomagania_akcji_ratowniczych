class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :difficulty_level

      t.timestamps null: false
    end
  end
end
