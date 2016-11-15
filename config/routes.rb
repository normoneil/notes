Rails.application.routes.draw do
  # Routes for the Ext_connection resource:
  # CREATE
  get "/ext_connections/new", :controller => "ext_connections", :action => "new"
  post "/create_ext_connection", :controller => "ext_connections", :action => "create"

  # READ
  get "/ext_connections", :controller => "ext_connections", :action => "index"
  get "/ext_connections/:id", :controller => "ext_connections", :action => "show"

  # UPDATE
  get "/ext_connections/:id/edit", :controller => "ext_connections", :action => "edit"
  post "/update_ext_connection/:id", :controller => "ext_connections", :action => "update"

  # DELETE
  get "/delete_ext_connection/:id", :controller => "ext_connections", :action => "destroy"
  #------------------------------

  # Routes for the Connection resource:
  # CREATE
  get "/connections/new", :controller => "connections", :action => "new"
  post "/create_connection", :controller => "connections", :action => "create"

  # READ
  get "/connections", :controller => "connections", :action => "index"
  get "/connections/:id", :controller => "connections", :action => "show"

  # UPDATE
  get "/connections/:id/edit", :controller => "connections", :action => "edit"
  post "/update_connection/:id", :controller => "connections", :action => "update"

  # DELETE
  get "/delete_connection/:id", :controller => "connections", :action => "destroy"
  #------------------------------

  # Routes for the Result resource:
  # CREATE
  get "/results/new", :controller => "results", :action => "new"
  post "/create_result", :controller => "results", :action => "create"

  # READ
  get "/results", :controller => "results", :action => "index"
  get "/results/:id", :controller => "results", :action => "show"

  # UPDATE
  get "/results/:id/edit", :controller => "results", :action => "edit"
  post "/update_result/:id", :controller => "results", :action => "update"

  # DELETE
  get "/delete_result/:id", :controller => "results", :action => "destroy"
  #------------------------------

  # Routes for the Action resource:
  # CREATE
  get "/actions/new", :controller => "actions", :action => "new"
  post "/create_action", :controller => "actions", :action => "create"

  # READ
  get "/actions", :controller => "actions", :action => "index"
  get "/actions/:id", :controller => "actions", :action => "show"

  # UPDATE
  get "/actions/:id/edit", :controller => "actions", :action => "edit"
  post "/update_action/:id", :controller => "actions", :action => "update"

  # DELETE
  get "/delete_action/:id", :controller => "actions", :action => "destroy"
  #------------------------------

  # Routes for the Type resource:
  # CREATE
  get "/types/new", :controller => "types", :action => "new"
  post "/create_type", :controller => "types", :action => "create"

  # READ
  get "/types", :controller => "types", :action => "index"
  get "/types/:id", :controller => "types", :action => "show"

  # UPDATE
  get "/types/:id/edit", :controller => "types", :action => "edit"
  post "/update_type/:id", :controller => "types", :action => "update"

  # DELETE
  get "/delete_type/:id", :controller => "types", :action => "destroy"
  #------------------------------

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
