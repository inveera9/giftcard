class FiledetsController < ApplicationController

	def index
		@file = Filedet.all
	end

	def new 
		@file = Filedet.new
	end

	def create
		# byebug
		@file = Filedet.new(file_params)
		if @file.save
			if params[:filedet][:data].blank?
        		redirect_to root_url  #where you want to redirect.
    		else
    			render :action => 'crop'
    		end
		else
			render :action => 'new'
		end
		# redirect_to @file
	end

	def show
		@file = Filedet.find(params[:id])

	end

	def destroy
		@file = Filedet.find(params[:id])
		@file.destroy
		redirect_to filedets_path		
	end

	def update
    	@file = Filedet.find(params[:id])
    	if @file.update_attributes(file_params)
      		if params[:file][:data].blank?
       			redirect_to root_url
      		else
        		render :action => "crop"
      		end
    	else
      		render :action => 'edit'
    	end
  	end 

  	def crop
    	@file = Filedet.find(params[:id])
    	@file.update_attributes(crop_params)
    	@file.data.reprocess!  #crop the image and then save it.
    	redirect_to filedets_path(@file.id)
  	end

	private
	def file_params
		params.require(:filedet).permit(:data) 
	end

	def crop_params
    	params.require(:filedet).permit(:crop_x, :crop_y, :crop_w, :crop_h)
  	end
end
