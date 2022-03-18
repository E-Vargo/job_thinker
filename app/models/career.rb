class Career < ApplicationRecord
    #model relationships
    has_many :plans 
    has_many :progress_reports
    has_many :users, through: :progress_reports

    #validations
     validate :name, :competitive, presence: true 
     validates :field, length: { in: 3..50}
     validates :avg_salary, numericality: {in: 1..1000000}
     validates :typical_personality, length: { in: 3..30}
end
