Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show] do
    # collection do
    #   get "activate/:id" => "users#activate", as: :activate
    # end
  end

  resource :student do
    collection do
      get "activate/:id" => "students#activate", as: :activate
    end
  end

  # resources :users do
  #   collection do
  #     get "activate/:a_long_token" => "users#activate", as: :activate
  #   end
  # end

  # activate_users GET    /users/activate/:a_long_token(.:format) users#activate

  # patch 'students/:id/activate', to: 'students#show'
end
