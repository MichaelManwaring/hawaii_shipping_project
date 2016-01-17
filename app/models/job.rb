class Job < ActiveRecord::Base
	belongs_to :customer
	belongs_to :trips
	has_many :ship, through: :trip
	validates_uniqueness_of :job_name
	validates :cargo, presence: true, length: { minimum: 50 }

	PORT = ["Hawaii", "Maui", "Lanai", "Moloka'i", "Honolulu", "Kuai"]
	def self.rand_jobs
		for i in 1..120 do
			# calculate random cost
			@containers=rand(6..150)
			if @containers < 10
		  		@cost = 200*@containers
		  	elsif @containers < 50
		  		@cost = 150*@containers
		  	else
		  		@cost = 100*@containers
		  	end
		  	# create random origin and destination
		  	@o=rand(6)
		  	destarray=[]
		  	for j in 0..6 do
				if j != @o
					destarray.push(j)
				end
		  	end
		  	@d=destarray[rand(5)]
		  	# create job, with name that tells its path
			Job.create(user_id: rand(5..8), job_name: ("Job " + i.to_s + ": " + PORT[@o] + " to " + PORT[@d]), containers_needed: @containers, origin: @o, destination: @d, cost: @cost, delivery_by: (Time.now + 345600), cargo: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum, vitae. Rerum corporis iusto rem veritatis modi voluptatem doloremque nam dolor aliquam magni omnis voluptatibus obcaecati veniam porro, tempore, laboriosam nemo!")
		end
	end

end
