class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :name
      t.text :address1
      t.text :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone1
      t.integer :phone2
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_details, :users
  end
end
