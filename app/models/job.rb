class Job < ActiveRecord::Base
	

	belongs_to :customer
	belongs_to :trips
	belongs_to :ship #, through: :trip
end
