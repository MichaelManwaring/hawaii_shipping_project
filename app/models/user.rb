class User < ActiveRecord::Base
	has_secure_password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create
end
class Captain < User
	has_many :ships, foreign_key: 'user_id'
	has_many :trips, through: :ships, foreign_key: 'user_id'
	# Adds user to relationship table when they follow another user.
	has_many :followships, foreign_key: 'user_id'
	has_many :ships, through: :followedships, foreign_key: 'user_id'
end
class Customer < User
	has_many :jobs, foreign_key: 'user_id'
end


class Relationship <ActiveRecord::Base
	belongs_to :followed, class_name: 'User'
	belongs_to :follower, class_name: 'User'
end