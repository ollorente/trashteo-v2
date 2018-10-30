class CreateTowns < ActiveRecord::Migration[5.2]
  def change
    create_table :towns do |t|
      t.string :name, null: false
      t.references :city, foreign_key: true
      t.boolean :lock, default: false

      t.timestamps
    end
  end
end
