Bostonedmcalendar::Application.routes.draw do
  devise_for :user

  authenticated :user do
    root :to => 'home#index'
  end

  get '/venues/all_new', :to => 'venues#all_new', :as => :all_new_venues
  get '/venues/create_all', :to => 'venues#create_all', :as => :create_all_venues
  resources :twitters, :venues, :users, :events

  #match 'all_new{.}json'#, :to => 'venues#all_new', :as => :all_new_venues_path
  #TODO: post 'import_export.json', => 'venues#import_export.json', :as => :"import_export_venues.json"#, :content_type => :"application/json"
  root :to => "home#index"
end