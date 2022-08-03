class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :goal_amount
      t.integer :current
      t.integer :user_id

      t.timestamps
    end
  end
end
