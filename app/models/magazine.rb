class Magazine < ActiveRecord::Base
  belongs_to :area
  belongs_to :union
  belongs_to :group

has_and_belongs_to_many :fascicles
end
