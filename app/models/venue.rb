class Venue < ActiveRecord::Base
  attr_accessible :name, :address, :website, :twitter
  validates :name, :presence => true
  validates :address, :presence => true

  has_many :events
end
