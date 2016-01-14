class Route < ActiveRecord::Base
	has_many :trips
	has_many :ships, through: :trips
end
