# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Destroying tables..."
User.destroy_all
Bank.destroy_all
Goal.destroy_all
Commit.destroy_all

puts "Seeding data..."
u1 = User.create(username:"Ben Dover" , first_name:"Norm" , last_name:"Amarachi" , password:"12345")


b1 = Bank.create(name:"Chase", account_number: "2928" , balance:10000 , user_id: u1.id)
b2 = Bank.create(name:"Boa", account_number: "2836" , balance:7000 , user_id: u1.id)


g1 = Goal.create(name:"Tesla fund" , goal_amount:7000 , current:2000 , user_id: u1.id)
g2 = Goal.create(name:"Flatiron tuition" , goal_amount:16000 , current:1000 , user_id: u1.id)


c1 = Commit.create!(user_id:u1.id , bank_id:b1.id , goal_id:g1.id , transfer_amount:2000)

c2 = Commit.create(user_id:u1.id , bank_id:b1.id , goal_id:g2.id , transfer_amount:1000)

c3 = Commit.create(user_id:u1.id , bank_id:b2.id , goal_id:g1.id , transfer_amount:500)


puts "Done..."