class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.float :value
      t.boolean :active, default: true
      t.boolean :lock, default: false

      t.timestamps
    end
  end
end
