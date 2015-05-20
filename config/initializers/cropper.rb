module Paperclip
  class Cropper < Thumbnail
    def transformation_command
      if crop_command
        @arr = crop_command + super.join(' ').sub(/ -crop \S+/, '')
        @arr.split(' ')
        # crop_command + super.sub(/ -crop \S+/, '')
        #super returns an array like this: ["-resize", "100x", "-crop",            "100x100+0+0", "+repage"]
      else
        super
      end
    end
    def crop_command
      target = @attachment.instance
      if target.cropping?
        " -crop '#{target.crop_w.to_i}x#{target.crop_h.to_i}+#{target.crop_x.to_i}+#{target.crop_y.to_i}'"
      end
    end
  end
end