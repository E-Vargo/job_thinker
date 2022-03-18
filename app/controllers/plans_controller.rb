class PlansController < ApplicationController

    def index
        @plans = Plan.all
    end
    
    def show
        
    end
    
    def new
        @plan = Plan.new
    end
    
    def create
    end
    
    def edit
    end
    
    def update
    end
    
    private
    def plans_params
    end
end
