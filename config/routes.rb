Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get("/photos/new", { :controller => "pictures", :action => "new_form" })
get("/create_photo", { :controller => "pictures", :action => "create_row" })

# READ
get("/", { :controller => "pictures", :action => "index" })

get("/photos", { :controller => "pictures", :action => "index" })
get("/photos/:id", { :controller => "pictures", :action => "show" })

# UPDATE
get("/photos/:id/edit", { :controller => "pictures", :action => "edit_form" })
get("/update_photo/:id", { :controller => "pictures", :action => "update_row" })

# DELETE
get("/delete_photo/:id", { :controller => "pictures", :action => "destroy_row" })

end
