Rails.application.routes.draw do
  devise_for :users
  get 'contact_forms/new'
  get 'contact_forms/create'
  get 'kontakt/index'
  get 'impressum/index'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
