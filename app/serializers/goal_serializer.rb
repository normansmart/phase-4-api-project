class GoalSerializer < ActiveModel::Serializer
  attributes :id, :name, :goal_amount, :current, :user_id

  
  has_many :commits

end
