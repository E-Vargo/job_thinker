class Career < ApplicationRecord
    #model relationships
    has_many :plans 
    has_many :progress_reports
    has_many :users, through: :progress_reports

    #validations
     validates :competitive, inclusion: { in: [ true, false ] }
     validates :name, uniqueness: true
     validates :field, length: { in: 3..50}
     validates :avg_salary, numericality: {in: 1..1000000}
     validates :typical_personality, length: { in: 3..30}

     #scopes
     scope :ordered_by_salary, -> {order(avg_salary: :desc)}
     scope :highest_paying, -> {order(avg_salary: :desc).first}
     scope :lowest_paying, -> {order(avg_salary: :asc).first}
end
