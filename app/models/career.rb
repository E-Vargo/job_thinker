class Career < ApplicationRecord
    has_many :plans 
    has_many :progress_reports
    has_many :users, through: :progress_reports
end
