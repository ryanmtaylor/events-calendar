class Venue < ActiveRecord::Base
  attr_accessible :name, :address, :website, :twitter
end
