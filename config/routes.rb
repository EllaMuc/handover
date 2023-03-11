Rails.application.routes.draw do
  devise_for :users
  get '/about', to: 'pages#about'
  get '/rooms', to: 'rooms#index'

  root to: "pages#home"

  resources :rooms do
    resources :damages
  end

  resources :properties do
    resources :keys
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :properties do
    resources :keys
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
