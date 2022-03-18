class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def after_sign_in_path_for(resource)
        plans_path
    end

    #protected

    #def configure_permitted_parameters
    #   devise_parameter_sanitize.permit(:sign_in, keys: [:login])
    #  devise_parameter_sanitize.permit(:sign_up, keys: [:name, :email])
    #end
end
