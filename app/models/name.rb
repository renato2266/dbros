class Name < ActiveRecord::Base
  belongs_to :ambit
  belongs_to :area
  belongs_to :group

  has_and_belongs_to_many :fascicles




  has_attached_file :photo, 
	:styles => { :medium => "300x300>", :thumb => "100x100>" }, 
	:default_url => "/images/ missing.png", 
	:url  => "/assets/avatar/:id/:style/:basename.:extension", 
	:path => ":rails_root/public/assets/avatar/:id/:style/:basename.:extension"



end
