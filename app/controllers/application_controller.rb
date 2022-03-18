class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    protected

    def configure_permitted_parameters
        devise_parameter_sanitize.permit(:signup, keys: [:role_id, :name])
    end
end
