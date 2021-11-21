class ApplicationController < ActionController::Base

    add_flash_types :info, :error, :warning

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :country, :state, :city, :address1, :address2, :address3, :zip, :bio, :password])
    end
    
end
