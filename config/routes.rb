Rails.application.routes.draw do
  # get 'homepage/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root to: 'homepage/home'
  # Defines the root path route ("/")
  # root "articles#index"
  get 'home', to: 'homepage#home'

  resources :contact, only: [:create]
end
