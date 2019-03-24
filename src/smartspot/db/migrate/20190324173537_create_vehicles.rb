class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.references :vehicle_model, index: true, foreign_key: true
      t.text :licence_plate
      t.text :color

      t.timestamps null: false
    end
  end
end
