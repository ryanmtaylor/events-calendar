class Twitter < ActiveRecord::Base
  attr_accessible :user, :uid, :token, :secret
end
