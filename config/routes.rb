Rails.application.routes.draw do
  devise_for :users
  get '/about', to: 'pages#about'

  root to: "pages#home"
  resources :rooms do
    resources :damages
  end

  resources :properties do
    resources :keys
    resources :rooms, only: [:new, :create]
    get "/posts", to: "posts#show"
    get "/pdf", to: "posts#generate_pdf"
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
