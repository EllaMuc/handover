Rails.application.routes.draw do
  devise_for :users
  get '/about', to: 'pages#about'

  root to: "pages#home"

  resources :rooms, except: [:new, :create] do
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
