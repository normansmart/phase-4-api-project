class Goal < ApplicationRecord
    
    belongs_to :user

    has_many :commits
    has_many :banks, through: :commits
    
end
