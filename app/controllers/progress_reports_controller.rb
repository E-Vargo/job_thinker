class ProgressReportsController < ApplicationController
    
    def index
        @progress_reports = ProgressReport.all
    end
    
    def show
        @progress_report = ProgressReport.find(params[:id])
    end
    
    def new
        @progress_report = ProgressReport.new
    end
    
    def create
        progress_report = ProgressReport.create(progress_report_params)
        redirect_to progress_reports_path(progress_report)
    end
    
    def edit
    end
    
    def update
    end
    
    private
    def progress_report_params
        params.require(:progress_report).permit(
        
        )
    end
end
