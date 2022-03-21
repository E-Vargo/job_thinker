class Commitment < ApplicationRecord
    #model relationships
    belongs_to :plan, optional: true
    belongs_to :user

    #validations 
    validates :name, presence: true
    validates :passion_level, numericality: {in: 1..10}

     #scopes
     scope :ordered_by_passion_level, -> {order(passion_level: :desc)}
end
