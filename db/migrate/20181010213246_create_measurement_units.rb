class CreateMeasurementUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :measurement_units do |t|
      t.string :name, null: false
      t.boolean :lock, default: false

      t.timestamps
    end
    add_index :measurement_units, :name, unique: true
  end
end
