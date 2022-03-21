class PlansController < ApplicationController

    def index
        @plans = Plan.ordered_by_steps
        @commitments = Commitment.ordered_by_passion_level
    end
    
    def show
        if params[:id] == 'fewest-steps'
            @plan = Plan.fewest_steps
        elsif params[:id] == 'most-steps'
            @plan = Plan.most_steps
        else
        @plan = Plan.find(params[:id])
        end
        @career = Career.find_by(id: [@plan.career_id])
    end
    
    def new
        @plan = Plan.new
    end
    
    def create
        plan = Plan.create(plan_params)
        plan.user_id = current_user.id
        plan.save
        if !plan.valid? 
            redirect_to new_plan_path, warning: "Invalid parameters!"
        else  
        redirect_to career_plan_path(plan.career_id, plan)
        end
    end
    
    def edit
        @plan = Plan.find(params[:id])
        @career = Career.find_by(id: [@plan.career_id])
            if current_user.id != @plan.user_id
                redirect_to plans_path, warning: "Cannot edit a plan that isn't yours!"
            end
    end
    
    def update
        plan = Plan.find(params[:id])
        plan.update(plan_params)
        if !plan.valid?
            redirect_to edit_plan_path(plan), warning: "Invalid Parameters"
        else
        redirect_to plan_path(plan)
        end
    end
    
    private
    def plan_params
        params.require(:plan).permit(
            :name,
            :career_id,
            :user_id,
            :description,
            :steps
        )
    end
end
