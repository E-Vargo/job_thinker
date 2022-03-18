class Plan < ApplicationRecord
    #model relationships
    belongs_to :user 
    belongs_to :career 
    has_many :commitments

    #validations
    validates_presence_of :name
    validates_presence_of :steps
    validates :description, length: {in: 300..10000}
end
