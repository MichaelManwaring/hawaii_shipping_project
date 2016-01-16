class Ship < ActiveRecord::Base
	belongs_to :captain
	has_many :trips
	has_many :jobs, through: :trips
<<<<<<< HEAD
	has_many :followships
	has_many :captains, through: :followships
=======

	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" },
	:default_url => "/images/:style/missing.png"

	validates_attachment_content_type :photo, :content_type => [/\Aimage\/.*\Z/, /png\Z/, /jpe?g\Z/, /gif\Z/]

	validates_uniqueness_of :ship_name
>>>>>>> 224fdca6a296204f9e68d762acc2e7a6e343768a
end
