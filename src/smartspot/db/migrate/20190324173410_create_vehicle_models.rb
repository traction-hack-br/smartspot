class CreateVehicleModels < ActiveRecord::Migration
  def change
    create_table :vehicle_models do |t|
      t.references :vehicle_brand, index: true, foreign_key: true
      t.text :name
      t.references :parking_spot_size, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
