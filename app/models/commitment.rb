class Commitment < ApplicationRecord
    #model relationships
    belongs_to :plan 
    belongs_to :user

    #validations 
    validates :name, presence: true
    validates :passion_level, numericality: {in: 1..10}
end
