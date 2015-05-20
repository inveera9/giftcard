class CreateGiftcardDetails < ActiveRecord::Migration
  def change
    create_table :giftcard_details do |t|
      t.integer :value
      t.string :name
      t.string :message
      t.string :valid_through
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :giftcard_details, :users
  end
end
