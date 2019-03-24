class CreateParkingSpotStatuses < ActiveRecord::Migration
  def change
    create_table :parking_spot_statuses do |t|
      t.text :description
      t.boolean :is_available

      t.timestamps null: false
    end
  end
end
