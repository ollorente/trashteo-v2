class CreateQualifications < ActiveRecord::Migration[5.2]
  def change
    create_table :qualifications do |t|
      t.references :transaction, foreign_key: true
      t.integer :value, null: false
      t.text :feedback, null: true
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
