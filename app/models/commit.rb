class Commit < ApplicationRecord
    belongs_to :bank
    belongs_to :goal
    belongs_to :user
end
