class User < ActiveRecord::Base

end
class Captain < User
	has_many :ships
	has_many :trips, through: :ships
end
class Customer < User
	has_many :jobs
end
