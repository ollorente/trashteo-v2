class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :phone, null: false
      t.string :email, null: false, :limit => 55
      t.string :password_digest, null: false
      t.references :type_user, foreign_key: true
      t.references :town, foreign_key: true
      t.boolean :active, default: true
      t.boolean :lock, default: false

      t.timestamps
    end
    add_index :users, :phone, unique: true
    add_index :users, :email, unique: true
  end
end
