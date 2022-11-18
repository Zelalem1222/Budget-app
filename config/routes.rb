Rails.application.routes.draw do
  
  resources :categories do
    resources :purchases
  end

  # devise_for :users
  root 'categories#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
