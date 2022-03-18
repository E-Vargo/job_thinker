class PlansController < ApplicationController

    def index
        @plans = Plan.all
    end
    
    def show
        @plan = Plan.find(params[:id])
        @career = Career.find_by(id: [@plan.career_id])
    end
    
    def new
        @plan = Plan.new
    end
    
    def create
        plan = Plan.create(plan_params)
        plan.user_id = current_user.id
        plan.save 
        redirect_to career_plan_path(plan.career_id, plan)
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
        redirect_to plan_path(plan)
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
