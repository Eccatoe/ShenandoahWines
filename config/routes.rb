Rails.application.routes.draw do
  resources :users
  resources :user_wines
  resources :varietals
  resources :wineries
  resources :wines
 
end
