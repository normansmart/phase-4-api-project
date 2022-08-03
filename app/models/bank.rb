class Bank < ApplicationRecord
    belongs_to :user

    has_many :commits
    has_many :goals , through: :commits
end
