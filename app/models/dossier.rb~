class Dossier < ActiveRecord::Base


has_attached_file :documento, 
    :url  => "/assets/dossiers/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/dossiers/:id/:style/:basename.:extension"
    
    validates_attachment_presence :documento


end
