Rails.application.routes.draw do
  resources :users
  resources :user_wines
  resources :varietals
  resources :wineries
  resources :wines
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
