Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show]

  get 'students/:id/activate', to: 'students#activate', as: 'activate_student'

end

# Prefix    Verb  URI Pattern                     Controller#Action
# students  GET  /students(.:format)              students#index
# student   GET  /students/:id(.:format)          students#show
#           GET  /students/:id/activate(.:format) students#activate
