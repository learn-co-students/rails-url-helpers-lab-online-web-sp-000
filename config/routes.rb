Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/students'=>"students#index"

  get '/student/:id'=>"students#show", :as=>:student

  get '/student/:id/activate' =>"students#active", :as=>:activate_student
end
