class CommitmentsController < ApplicationController

    def new 
        @commitment = Commitment.new
    end

    def index 
        @commitments = Commitment.all
    end

    def create 
        commitment = Commitment.create(commitment_params)
        if !commitment.valid? 
            redirect_to plans_path, warning: "Invalid parameters!"
        else  
        redirect_to plans_path
        end
    end


    private
    def commitment_params
        params.require(:commitment).permit(
            :name,
            :career_id,
            :user_id,
            :passion_level
        )
    end
end
