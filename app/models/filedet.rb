class Filedet < ActiveRecord::Base
	has_attached_file :data, :styles => {  :small => "100x100#", :large => "500x500>" }, :processors => [:cropper]
	validates_attachment_content_type :data, :content_type => /^image\/(png|gif|jpeg|jpg)/
	attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
	def cropping?
		!crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
	end
	def avatar_geometry(style = :original)
		@geometry ||= {}
		@geometry[style] ||= Paperclip::Geometry.from_file(data.path(style))
	end
	
	# do_not_validate_attachment_file_type :data
end
