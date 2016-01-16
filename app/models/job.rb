class Job < ActiveRecord::Base
	belongs_to :customer
	belongs_to :trips
	# belongs_to :ship, through: :trip
	validates_uniqueness_of :job_name
	validates :cargo, presence: true, length: { minimum: 50 }
end
