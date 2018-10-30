class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :name, null: false
      t.references :product, foreign_key: true
      t.boolean :active, default: true
      t.boolean :lock, default: false
      
      t.timestamps
    end
  end
end
