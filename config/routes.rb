Rails.application.routes.draw do

  get 'students/:id/activate', to: 'students#activate', as: 'activate_student'
  resources :students, only: [:index, :show]

end
