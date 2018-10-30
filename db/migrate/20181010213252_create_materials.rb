class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :name, null: false
      t.boolean :lock, default: false

      t.timestamps
    end
    add_index :materials, :name, unique: true
  end
end
