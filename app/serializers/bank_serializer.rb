class BankSerializer < ActiveModel::Serializer
  attributes :id, :name, :account_number, :balance, :user_id
  has_many :goals
  belongs_to :user
end
