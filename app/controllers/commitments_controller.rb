class CommitmentsController < ApplicationController

    def show 
        @commitment = Commitment.find(params[:id])
    end

end
