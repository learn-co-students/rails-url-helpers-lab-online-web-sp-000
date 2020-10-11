Rails.application.routes.draw do
  # For details on the DSL     available within this file, see http://guides.rubyonrails.org/routing.html

  # get "students", to: "students#index"
  
  # get "students", to: "students#show"
  resources :students, only: [:index, :show]

  #      custom :id route       'student' controller
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student' # <-- 'activate' student path method
  #          route to 'activate'      'activate' action method
end
