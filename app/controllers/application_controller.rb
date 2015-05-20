class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(resource_or_scope)
   signed_in_root_path(resource_or_scope)
    end
  
    def after_sign_out_path_for(resource_or_scope)
          root_path
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :address1, :address2, :city ,:state , :zip ,:phone1 , :phone2) }
    end
end
