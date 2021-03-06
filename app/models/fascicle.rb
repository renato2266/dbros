class Fascicle < ActiveRecord::Base
  has_and_belongs_to_many :names
  has_and_belongs_to_many :groups
  has_and_belongs_to_many :magazines
  has_and_belongs_to_many :unions
  
    validates_uniqueness_of :numero, :case_sensitive => false, :message => ":  nome già presente!"
    validates_presence_of :numero, :message => ":  campo vuoto!"
  
  def self.search(search, page)
    paginate :per_page => 25, :page => page,
             :conditions => ['numero LIKE ? or note LIKE ? ', "#{search}","%#{search}%"],
             :order => 'numero DESC'
  end

end
