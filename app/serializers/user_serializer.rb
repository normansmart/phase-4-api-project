class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :password
  has_many :goals
  has_many :banks
  has_many :commits , through: :goals
end
