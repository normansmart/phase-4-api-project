class CreateBanks < ActiveRecord::Migration[6.1]
  def change
    create_table :banks do |t|
      t.string :name
      t.string :account_number
      t.integer :balance
      t.integer :user_id

      t.timestamps
    end
  end
end
