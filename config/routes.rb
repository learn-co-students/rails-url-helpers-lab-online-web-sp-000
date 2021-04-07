Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'students/:id/activate', to: 'students#activate', as: 'activate-student'

  resources :students, only: :index, as: 'students'

  resources :students, only: :show, as: 'students'

  # This show route can be refactored into the above resouces' method call above, like so:
  # resources :students, only: [:index, :show]
  # However for the sake of this lab and seeing
  # how you can pass params through the
  # route, we'll keep it explicit and refactor it later
  # resources :students, only: :show #, as:'student'
  # get "students/:id", to: "students#show"
end
