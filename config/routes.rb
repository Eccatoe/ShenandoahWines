Rails.application.routes.draw do
  resources :trail_stops
  resources :trails
  resources :users
  resources :user_wines
  resources :varietals
  resources :wineries
  resources :wines
  get '/rose', to: 'wines#rose'
 
end
