Rails.application.routes.draw do
  resources :trail_stops, only: [:index, :create, :destroy]
  resources :trails, only: [:create, :index, :destroy]
  # resources :users
  resources :user_wines
  resources :varietals, only: :index
  resources :wineries, only: [:index, :show]
  resources :wines, only: [:show, :index]
 
end
