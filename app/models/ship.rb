class Ship < ActiveRecord::Base
	belongs_to :captain
	has_many :trips
	has_many :jobs, through: :trips

	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" },
	:default_url => "/images/:style/missing.png"

	validates_attachment_content_type :photo, :content_type => [/\Aimage\/.*\Z/, /png\Z/, /jpe?g\Z/, /gif\Z/]
end
