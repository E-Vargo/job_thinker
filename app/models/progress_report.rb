class ProgressReport < ApplicationRecord
    #model relationships 
    belongs_to :user 
    belongs_to :career

    #validations 
    validates :content, length: {in: 150..3500}
    validates :date, presence: true
end
