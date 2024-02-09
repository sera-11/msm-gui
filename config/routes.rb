Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  #Director routes
  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })

  post("/insert_director", { :controller => "directors", :action => "create"})
  post("/modify_director/:id", { :controller => "directors", :action => "modify"})
  get("/delete_director/:id", {:controller => "directors", :action => "destroy" })

  #Movie routes
  get("/movies", { :controller => "movies", :action => "index" })
  post("/insert_movie", { :controller => "movies", :action => "create"})
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  
  post("/modify_movie/:id", { :controller => "movies", :action => "modify"})
  get("/delete_movie/:id", {:controller => "movies", :action => "destroy" })
  
  #Actor routes
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })

  post("/insert_actor", { :controller => "actors", :action => "create"})
  post("/modify_actor/:id", { :controller => "actors", :action => "modify"})
  get("/delete_actor/:id", {:controller => "actors", :action => "destroy" })
end
