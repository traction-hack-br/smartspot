class CreateGuestHistories < ActiveRecord::Migration
  def change
    create_table :guest_histories do |t|
      t.references :guest, index: true, foreign_key: true
      t.references :vehicle, index: true, foreign_key: true
      t.references :parking_spot, index: true, foreign_key: true
      t.datetime :entrance_date
      t.datetime :exit_date

      t.timestamps null: false
    end
  end
end
