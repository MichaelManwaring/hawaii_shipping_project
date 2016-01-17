class User < ActiveRecord::Base
	has_secure_password
	validates_confirmation_of :password
end
class Captain < User
	has_many :ships, foreign_key: 'user_id'
	has_many :trips, through: :ships, foreign_key: 'user_id'
	# Adds user to relationship table when they follow another user.
	has_many :followships, foreign_key: 'user_id'
	has_many :ships, through: :followships, foreign_key: 'user_id'
end
class Customer < User
	has_many :jobs, foreign_key: 'user_id'
end

