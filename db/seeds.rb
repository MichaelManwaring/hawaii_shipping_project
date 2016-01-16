# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# USERS

# Captains:

User.create(fname: "Erin", lname: "Mahon", email: "erin@gmail.com", company: "Ahola Shipping", password_digest: "password", type: "Captain")
User.create(fname: "Michael", lname: "Manwaring", email: "michael@gmail.com", company: "Quick Ship", password_digest: "password", type: "Captain")
User.create(fname: "Jeff", lname: "Bowne", email: "jeff@gmail.com", company: "Bowne Shipping", password_digest: "password", type: "Captain")

# Customers:

User.create(fname: "Rachel", lname: "Smith", email: "rachel@gmail.com", company: "Rachel's Pet Supplies", password_digest: "password", type: "Customer")
User.create(fname: "Michael", lname: "Stafford", email: "michael@gmail.com", company: "Hello Fresh", password_digest: "password", type: "Customer")
User.create(fname: "Natalie", lname: "Navarre", email: "natalie@gmail.com", company: "Building Suppliers", password_digest: "password", type: "Customer")

