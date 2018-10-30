class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description, null: true
      t.references :user, foreign_key: true
      t.references :unit, foreign_key: true
      t.references :material, foreign_key: true
      t.float :price, default: "0.0"
      t.integer :amount, null: false
      t.datetime :date_finish, default:"0000-00-00T00:00:00.000Z"
      t.text :location, null: false
      t.time :collection_time, null: false
      t.boolean :active, default: true
      t.boolean :lock, default: false

      t.timestamps
    end
  end
end
