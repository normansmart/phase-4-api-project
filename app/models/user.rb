class User < ApplicationRecord
    has_many :banks
    has_many :goals
    has_many :commits , through: :goals
end
