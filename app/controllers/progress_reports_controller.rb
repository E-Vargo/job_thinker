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
        progress_report.user_id = current_user.id 
        progress_report.save
        redirect_to progress_reports_path(progress_report)
    end
    
    def edit
        @progress_report = ProgressReport.find(params[:id])
    end
    
    def update
        progress_report = ProgressReport.find(params[:id])
        progress_report.update(progress_report_params)
        redirect_to progress_report_path(progress_report)
    end
    
    private
    def progress_report_params
        params.require(:progress_report).permit(
            :career_id,
            :user_id,
            :content,
            :date,
            :name
        )
    end
end
