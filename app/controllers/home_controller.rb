class HomeController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:index]
  layout :public_layout, :only => :index

  def index
  end

private
  def public_layout
    'public'
    #@user.has_role? :admin ? 'application' : 'public'
  end
end