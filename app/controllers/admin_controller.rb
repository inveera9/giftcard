class AdminController < ApplicationController
	#load_and_authorize_resource 

	def index
		
		@user=User.all
	end
	def edit
     @user = User.find(params[:id])
    end
		def new
			if params[:user].blank?
				@user = User.new
			else
				@user = User.new(users_params)
    	  	  @user.save
        		redirect_to admin_index_path
       		 end
  		end
  # def create
  #     byebug
  #     byebug
  #         @user = User.new(users_params)
  #         @user.save
  #         redirect_to admin_index_path

  #   end
  
    private 
    def users_params
    	params.require(:user).permit(:email,:password,:confirmation)
    end

end
