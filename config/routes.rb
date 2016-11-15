Rails.application.routes.draw do
  # Routes for the Metadatum resource:
  # CREATE
  get "/metadata/new", :controller => "metadata", :action => "new"
  post "/create_metadatum", :controller => "metadata", :action => "create"

  # READ
  get "/metadata", :controller => "metadata", :action => "index"
  get "/metadata/:id", :controller => "metadata", :action => "show"

  # UPDATE
  get "/metadata/:id/edit", :controller => "metadata", :action => "edit"
  post "/update_metadatum/:id", :controller => "metadata", :action => "update"

  # DELETE
  get "/delete_metadatum/:id", :controller => "metadata", :action => "destroy"
  #------------------------------

  # Routes for the Note resource:
  # CREATE
  get "/notes/new", :controller => "notes", :action => "new"
  post "/create_note", :controller => "notes", :action => "create"

  # READ
  get "/notes", :controller => "notes", :action => "index"
  get "/notes/:id", :controller => "notes", :action => "show"

  # UPDATE
  get "/notes/:id/edit", :controller => "notes", :action => "edit"
  post "/update_note/:id", :controller => "notes", :action => "update"

  # DELETE
  get "/delete_note/:id", :controller => "notes", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
