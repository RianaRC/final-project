class ApplicationController < ActionController::Base

    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    before_action :sanitize_devise_params, if: :devise_controller?

    def sanitize_devise_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :country, :city])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone, :country, :city])
    end

end
