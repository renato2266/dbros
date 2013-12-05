class Name < ActiveRecord::Base
  belongs_to :ambit
  belongs_to :area
  belongs_to :group

  has_and_belongs_to_many :fascicles
  has_and_belongs_to_many :dossiers




  has_attached_file :photo, 
	:styles => { :medium => "300x300>", :thumb => "100x100>" }, 
	:default_url => "/assets/missing_thum.png", 
	:url  => "/assets/avatar/:id/:style/:basename.:extension", 
	:path => ":rails_root/public/assets/avatar/:id/:style/:basename.:extension"

 def self.search(search)
   if search
      find(:all, :conditions => ['cognome_nome LIKE ? or luogo_nascita LIKE ? or data_nascita LIKE ? or residenza LIKE ?', "%#{search}%","%#{search}%",
          "%#{search}%", "%#{search}%",], :order => 'cognome_nome ASC')
    else
     find(:all, :order => 'cognome_nome ASC')
    end
 end



 




end
