class CreateTypeUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :type_users do |t|
      t.string :name, null: false
      t.boolean :lock, default: false

      t.timestamps
    end
    add_index :type_users, :name, unique: true
  end
end
