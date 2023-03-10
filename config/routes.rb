Rails.application.routes.draw do
  devise_for :users
  get '/about', to: 'pages#about'

  root to: "pages#home"

<<<<<<< HEAD
  resources :rooms, except: [:new, :create] do
=======
  resources :rooms do
>>>>>>> 4d97319c43a7f9d726b78f6ac798ca5e3ae828ee
    resources :damages
  end

  resources :properties do
    resources :keys
    resources :rooms, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
