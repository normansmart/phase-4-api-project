class User < ApplicationRecord
    has_secure_password

    has_many :banks
    has_many :goals
    has_many :commits , through: :goals

    validates :username, presence: true
    validates :username, uniqueness: true
end
