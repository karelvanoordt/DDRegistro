class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception

    before_action :authenticate_user!


    protected

    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :rfc, :email, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
    end
end
