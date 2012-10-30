
Picmarks::Application.routes.draw do
  resources :movies

  # get "/pictures/:id/edit" => 'pictures#edit', :as => :edit_picture
  # 
  #   get "/pictures/new", :controller => 'pictures', :action => 'new', :as => :new_picture
  #   get "/pictures", :controller => 'pictures', :action => 'index'
  #   get "/pictures/:id", :controller => 'pictures', :action => 'show'
  #   post "/pictures", :controller => 'pictures', :action => 'create'
  #   delete "/pictures/:id", :controller => 'pictures', :action => 'destroy', :as => :picture
  #   put "/pictures/:id", :controller => 'pictures', :action =>'update'
  #   
  #   delete "pictures/", :controller => 'pictures', :action =>'delete_all', :as => :delete_all
  #   
  
  # get "/pictures/1", :controller => 'pictures', :action => 'pic1'
  # get "/pictures/2", :controller => 'pictures', :action => 'pic2'
  
end

# def picture_url(id)
#   return "/pictures/#{id}"
# end