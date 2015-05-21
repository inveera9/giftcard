class GiftcardDetail < ActiveRecord::Base

	# acts_as_sellable

  	belongs_to :user
  	# attr_accessible :piggybak_sellable_attributes, :value, :name, :message
  	has_attached_file :avatar
  	validates_attachment_content_type :avatar, :content_type => /^image\/(png|gif|jpeg|jpg)/
  	# rails_admin do
  	# 	configure :player do
  	# 		label 'Owner of this ball: '
  	# 	end
  	# end
  	acts_as_sellable
end
