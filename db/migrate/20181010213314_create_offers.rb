class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.float :price_offer, null: false
      t.boolean :active, default: true
      t.boolean :lock, default: false

      t.timestamps
    end
  end
end
