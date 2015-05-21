class AddDetailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address1, :text
    add_column :users, :address2, :text
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :integer
    add_column :users, :phone1, :integer
    add_column :users, :phone2, :integer
  end
end
