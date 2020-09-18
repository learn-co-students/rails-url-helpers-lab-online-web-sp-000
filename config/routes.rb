Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show] 
  resources :activate_students, only: [ :show] 
  # resources :students, only: [:show]
  
end
