class CareersController < ApplicationController

    def index
        @careers = Career.ordered_by_salary
    end
    
    def show 
        if params[:id] == 'highest-paying'
            @career = Career.highest_paying
        elsif params[:id] == 'lowest-paying'
            @career = Career.lowest_paying
        else
        @career = Career.find(params[:id])
        end
    end
    
    def new
        @career = Career.new
    end
    
    def create
        @career = Career.create(career_params)
        if !@career.valid? 
            redirect_to new_career_path, warning: "Invalid Parameters!"
        else
        redirect_to careers_path
        end
    end

    private

    def career_params
        params.require(:career).permit(
            :name,
            :field,
            :competitive,
            :avg_salary,
            :typical_personality
        )
    end
    
end
