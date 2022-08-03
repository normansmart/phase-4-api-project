class CommitSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :bank_id, :goal_id, :transfer_amount
  belongs_to :goal
  belongs_to :bank
end
