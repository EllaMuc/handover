Rails.application.routes.draw do
  devise_for :users
  get '/about', to: 'pages#about'

  root to: "pages#home"
  resources :rooms do
    resources :damages
    resources :damages, only: [:new, :create]
  end

  resources :properties do
    resources :keys
    resources :rooms
    get "/posts", to: "posts#show"
    get "/pdf", to: "posts#generate_pdf"
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :properties do
    resources :readings
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
