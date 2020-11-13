Rails.application.routes.draw do
  resources :students, only: :index 
  resources :students, only: :show
  get 'students/:id/activate', to: 'students#activate', as:'activate-student'
end
