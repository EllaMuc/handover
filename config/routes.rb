Rails.application.routes.draw do
<<<<<<< Updated upstream
  get 'pages/about'
  get 'pages/price'
  get 'contact_forms/new'
  get 'contact_forms/create'
  get 'kontakt/index'
  get 'impressum/index'
  get 'pages/index', to: 'pages#index'
=======
  get '/about', to: 'pages#about'
>>>>>>> Stashed changes
  get '/rooms', to: 'rooms#index'
  root to: "pages#home"

  resources :rooms do
    resources :damages
  end

  resources :properties do
    resources :keys
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
