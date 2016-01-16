class Followship < ActiveRecord::Base
	belongs_to :captain
	belongs_to :ship
end
