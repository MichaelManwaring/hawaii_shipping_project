class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
class Captain < User
	has_many :ships
	has_many :trips, through: :ships
end
class Customer < User
	has_many :jobs
end
