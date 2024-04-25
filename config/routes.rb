Rails.application.routes.draw do
  resources :posts
  resources :sections, only: %i[new create update destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
