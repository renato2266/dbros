class Group < ActiveRecord::Base
	has_many :names
	  has_and_belongs_to_many :fascicle
end
