class Ship < ActiveRecord::Base
	belongs_to :captain
	has_many :trips
	has_many :jobs, through: :trips
end
