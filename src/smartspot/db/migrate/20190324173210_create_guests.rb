class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.text :name
      t.text :document

      t.timestamps null: false
    end
  end
end
