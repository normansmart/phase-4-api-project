class CreateCommits < ActiveRecord::Migration[6.1]
  def change
    create_table :commits do |t|
      t.integer :user_id
      t.integer :bank_id
      t.integer :goal_id
      t.integer :transfer_amount

      t.timestamps
    end
  end
end
