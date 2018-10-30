class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name, null: false
      t.integer :indicate, null: true
      t.boolean :lock, default: false

      t.timestamps
    end
  end
end
