class Commitment < ApplicationRecord
    #model relationships
    belongs_to :plan 
    belongs_to :user

    #validations 
    validates_presence_of :type 
    validates_presence_of :passion_level
end
