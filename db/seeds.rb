# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# USERS

# Captains:

User.create(fname: "Erin", lname: "Mahon", email: "erin@gmail.com", company: "Ahola Shipping", password: "password", type: "Captain")
User.create(fname: "Mike", lname: "Manwaring", email: "mike@gmail.com", company: "Quick Ship", password: "password", type: "Captain")
User.create(fname: "Jeff", lname: "Bowne", email: "jeff@gmail.com", company: "Bowne Shipping", password: "password", type: "Captain")
User.create(fname: "Jimmy", lname: "Internet", email: "jimmy@internet.com", company: "Internet by Boat", password: "qwerty", type: "Captain")
User.create(fname: "Steve", lname: "Stafford", email: "steve@gmail.com", company: "Steve's Boatz", password: "password", type: "Captain")


# Customers:

User.create(fname: "Rachel", lname: "Smith", email: "rachel@gmail.com", company: "Rachel's Pet Supplies", password: "password", type: "Customer")
User.create(fname: "Michael", lname: "Stafford", email: "michael@gmail.com", company: "Hello Fresh", password: "password", type: "Customer")
User.create(fname: "Natalie", lname: "Navarre", email: "natalie@gmail.com", company: "Building Suppliers", password: "password", type: "Customer")
User.create(fname: "Timmy", lname: "Ahola", email: "timmy@aloha.com", company: "Timmy's Hawaiian Shirts", password: "qwerty", type: "Customer")

# Ships

Ship.create(user_id: 4, ship_name: "Rumplestiltskin", container_space: 100, current_location: 1, photo_file_name: "boat_1.jpg")
Ship.create(user_id: 1, ship_name: "Boat", container_space: 100, current_location: 0, photo_file_name: "boat_2.jpg")
Ship.create(user_id: 2, ship_name: "Essence", container_space: 100, current_location: 4, photo_file_name: "boat_3.png")
Ship.create(user_id: 3, ship_name: "Whats a good boat name?!", container_space: 100, current_location: 3, photo_file_name: "boat_1.jpg")

#route creation using creation method defined in model
# first set of routes travel from big island to big island with a stop midway at a small island
Route.route_hash(0, 2, 4)
Route.route_hash(0, 3, 5)
Route.route_hash(1, 2, 5)
Route.route_hash(1, 3, 4)
Route.route_hash(4, 2, 0)
Route.route_hash(5, 3, 0)
Route.route_hash(5, 2, 1)
Route.route_hash(4, 3, 1)
# second set of routes allow for exchanges between big islands on the same end of the state
Route.route_hash(0, 1, 5)
Route.route_hash(1, 0, 4)
Route.route_hash(5, 4, 0)
Route.route_hash(4, 3, 1)
# the third set of routes allows boats created at the small islands to leave, but no routes ever end on Molokai or Lanai
Route.route_hash(3, 4, 0)
Route.route_hash(3, 4, 5)
Route.route_hash(3, 2, 1)
Route.route_hash(2, 3, 4)
Route.route_hash(2, 1, 5)
Route.route_hash(2, 1, 0)
# puts Route.all

Job.rand_jobs
puts Job.all





