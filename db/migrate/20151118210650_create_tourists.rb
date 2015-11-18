class CreateTourists < ActiveRecord::Migration
  def change
    create_table :tourists do |t|
      t.integer :x
      t.integer :y
      t.integer :status
      t.integer :track_id

      t.timestamps null: false
    end
  end
end
