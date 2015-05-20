class AddAvatarToGiftcardDetails < ActiveRecord::Migration
  def self.up
    change_table :giftcard_details do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :giftcard_details, :avatar
  end
end