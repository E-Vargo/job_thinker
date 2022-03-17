class Plan < ApplicationRecord
    belongs_to :user 
    belongs_to :career 
    has_many :commitments
end
