class Goal < ApplicationRecord
   belongs_to :user
    has_many :banks
    has_many :commits
end
