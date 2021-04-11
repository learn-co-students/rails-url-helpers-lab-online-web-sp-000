Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show]
  # get "students/:id/activate", to: redirect('students/show/%{id}')
  get '/students/:id/activate', to: 'students#activate', as: :activate_student
  get '/students/:id/activate' => redirect(path: '/students/:id')
  # match '/students/:id/activate' => redirect('/students/%{id}')
end
