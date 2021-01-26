Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students do #only: [:index, :show] do 
    resources :activate 
  end 
  #resources :activate do 
    #get 'student', action: :index, controller: 'students'
  #end 

end
