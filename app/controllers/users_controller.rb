class UsersController < ApplicationController

    def show 
        @email = current_user.email
        @plans = current_user.plans 
        @careers = current_user.careers
        @progress_reports = current_user.progress_reports 
        @commitments = current_user.commitments 
    end

end