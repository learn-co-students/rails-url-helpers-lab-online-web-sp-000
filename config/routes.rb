Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students do
    member { get :activate}
    member { get :deactivate}
  end 
  
    get	'/students/:id/deactivate', to: 'students#deactivate'
    get	'/students/:id/activate', to:	'students#activate'
  
  end 