class CreateParkingSpots < ActiveRecord::Migration
  def change
    create_table :parking_spots do |t|
      t.text :code
      t.references :parking_log, index: true, foreign_key: true
      t.references :parking_spot_size, index: true, foreign_key: true
      t.references :parking_spot_status, index: true, foreign_key: true
      t.boolean :is_private
      t.boolean :is_for_disability
      t.boolean :is_occupied

      t.timestamps null: false
    end
  end
end
