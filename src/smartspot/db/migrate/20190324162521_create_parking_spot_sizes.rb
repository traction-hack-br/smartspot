class CreateParkingSpotSizes < ActiveRecord::Migration
  def change
    create_table :parking_spot_sizes do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
