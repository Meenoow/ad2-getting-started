Rails.application.routes.draw do
  # Routes for the Movie resource:
  get("/movies/:id/edit", { :controller => "movies", :action => "edit" })

  # CREATE
  post("/movies", { :controller => "movies", :action => "create" })

  # READ
  get("/movies", { :controller => "movies", :action => "index" })

  get("/movies/new", { :controller => "movies", :action => "new" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })

  # UPDATE

  patch("/movies/:path_id", { :controller => "movies", :action => "update" })

  # DELETE
  delete("/movies/:path_id", { :controller => "movies", :action => "destroy" })

  #------------------------------

  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
