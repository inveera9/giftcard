class UserController < ApplicationController
	#load_and_authorize_resource 

    def index
     @users=User.all
    end
  
    def show
    @user=User.find(params[:format])
   end
    def update
    #  byebug
      @user = User.find(params[:id])
      @user.update(user_params)
      redirect_to admin_index_path
   end

  def destroy

     @user = User.find(params[:id])
     @user.destroy

     if @user.destroy
       redirect_to admin_index_path, notice: "User deleted."
     end
  end
   
  #  def create
  #     @user = User.create(params[:user])
  #     @user.save
  #     redirect_to admin_index_path
  # end
 private 
    def user_params
      params.require(:user).permit(:email,:password,:confirmation)
    end
end
