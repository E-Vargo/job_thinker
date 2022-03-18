class CareersController < ApplicationController

    def index
        @careers = Career.all
    end
    
    def show
        @career = Career.find(params[:id])
    end
    
    def new
        @career = Career.new
    end
    
    def create
        @career = Career.create(career_params)
        redirect_to careers_path
    end
    
    def edit
        @career = Career.find(params[:id])
    end
    
    def update
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
