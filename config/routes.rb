#== Route Map
# Generated on 22 Sep 2012 13:52
#
#     events GET    /events(.:format)          events#index
#            POST   /events(.:format)          events#create
#  new_event GET    /events/new(.:format)      events#new
# edit_event GET    /events/:id/edit(.:format) events#edit
#      event GET    /events/:id(.:format)      events#show
#            PUT    /events/:id(.:format)      events#update
#            DELETE /events/:id(.:format)      events#destroy

Weekendfun::Application.routes.draw do

  root to: "events#index"
  resources :events, except: [:show, :index]
  get "/:title" => "events#show", as: 'event'

end

