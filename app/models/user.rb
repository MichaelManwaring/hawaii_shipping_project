class User < ActiveRecord::Base
	has_secure_password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create
end
class Captain < User
	has_many :ships, foreign_key: 'user_id'
	has_many :trips, through: :ships
end
class Customer < User
	has_many :jobs
end
