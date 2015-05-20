class GiftcardDetail < ActiveRecord::Base
	# acts_as_sellable
  	belongs_to :user
  	# attr_accessible :piggybak_sellable_attributes
  	has_attached_file :avatar
  	validates_attachment_content_type :avatar, :content_type => /^image\/(png|gif|jpeg|jpg)/
end
