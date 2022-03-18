class ProgressReport < ApplicationRecord
    #model relationships 
    belongs_to :user 
    belongs_to :career

    #validations 
    #validates :content, length: {in: 10..3500}
    #validates_presence_of :name

    #scopes 
    scope :ordered_by_recent, -> {order(date: :desc)}

end
