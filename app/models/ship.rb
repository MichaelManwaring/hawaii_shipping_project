class Ship < ActiveRecord::Base
	belongs_to :captain
	has_many :trips
	has_many :jobs, through: :trips
	has_many :followships
	has_many :captains, through: :followships
end
