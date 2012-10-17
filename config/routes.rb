Picmarks::Application.routes.draw do
  get "/pictures/new", :controller => 'pictures', :action => 'new'
  
  get "/pictures", :controller => 'pictures', :action => 'index'

  post "/pictures", :controller => 'pictures', :action => 'create'

  get "/pictures/:id", :controller => 'pictures', :action => 'show'
    
end