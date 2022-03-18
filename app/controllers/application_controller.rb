class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    add_flash_types :warning

    def after_sign_in_path_for(resource)
        plans_path
    end

end
