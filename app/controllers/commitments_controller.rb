class CommitmentsController < ApplicationController

    def new 
        @commitment = Commitment.new
    end


    def show 
        @commitment = Commitment.find(params[:id])
    end

    def create 
        commitment = Commitment.create(commitment_params)
        commitment.user_id = current_user.id 
        commitment.save
        if !commitment.valid? 
            redirect_to new_commitment_path, warning: "Invalid parameters!"
        else  
        redirect_to plans_path
        end
    end


    private
    def commitment_params
        params.require(:commitment).permit(
            :name,
            :plan_id,
            :user_id,
            :passion_level
        )
    end
end
