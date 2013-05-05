Bostonedmcalendar::Application.routes.draw do
  devise_for :user

  authenticated :user do
    root :to => 'home#index'
  end

  resources :twitters, :users, :events, :venues

#  resource :venues #do
#    get 'all_new', :on => :collection
#    post 'create_all', :on => :collection
#  end

  #match 'all_new{.}json'#, :to => 'venues#all_new', :as => :all_new_venues_path
  #TODO: post 'import_export.json', => 'venues#import_export.json', :as => :"import_export_venues.json"#, :content_type => :"application/json"
  root :to => "home#index"
end