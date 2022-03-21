class Plan < ApplicationRecord
    #model relationships
    belongs_to :user 
    belongs_to :career 
    has_many :commitments

    #validations
    validates :name, :career_id, :steps, presence: true
    validates :description, length: {in: 3..10000}


    #scopes
    scope :ordered_by_steps, -> {order(steps: :asc)}
    scope :fewest_steps, -> {order(steps: :asc).first}
    scope :most_steps, -> {order(steps: :desc).first}
end
