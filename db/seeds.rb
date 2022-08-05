# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Destroying tables..."
Goal.destroy_all
Commit.destroy_all

puts "Seeding data..."
u1 = User.create(username:"Ben Dover" , first_name:"Norm" , last_name:"Amarachi")
u2 = User.create(username:"EricE" , first_name:"Eric" , last_name:"E")



# b1 = Bank.create(name:"JPMorgan", account_number: "2928" , balance:10000 , user_id: u1.id)
# b2 = Bank.create(name:"BOA", account_number: "2836" , balance:7000 , user_id: u1.id)
# b3 = Bank.create(name:"Neuberger", account_number: "9876" , balance:10000 , user_id: u2.id)
# b4 = Bank.create(name:"Goldman", account_number: "08761235" , balance:7000 , user_id: u2.id)
# b4 = Bank.create(name:"Blackstone", account_number: "46574" , balance:10000 , user_id: u1.id)
# b6 = Bank.create(name:"Nomura", account_number: "291685" , balance:7000 , user_id: u2.id)

# count = 0

# while count < 25
#     puts count
#     puts User.pluck(:id).sample(1)
#     Goal.create!(name:"Test fund #{count}" , goal_amount:100  , current: 0 , user_id: User.all.pluck(:id).sample(1))
#     count += 1
# end

g1 = Goal.create(name:"Tesla fund" , goal_amount:7000 , current:2000 , user_id: 2)
g2 = Goal.create(name:"Flatiron tuition" , goal_amount:16000 , current:1000 , user_id: 3)
g3 = Goal.create(name:"Ferrari fund" , goal_amount:100000 , current:2000 , user_id: 4)
g4 = Goal.create(name:"Boat fund" , goal_amount:16000 , current:1000 , user_id: 5)

c1 = Commit.create!(user_id:u1.id , bank_id:b1.id , goal_id:g1.id , transfer_amount:2000)

c2 = Commit.create(user_id:u1.id , bank_id:b1.id , goal_id:g2.id , transfer_amount:1000)

c3 = Commit.create(user_id:u1.id , bank_id:b2.id , goal_id:g1.id , transfer_amount:500)


puts "Done..."