Rails.application.routes.draw do
  resources :users_products
  resources :deals
  resources :money
  resources :locations
  resources :products
  resources :users
  devise_for :models
  get '/about_us', to: 'welcome#about'
  get  '/signup', to: 'users#new'
  root 'welcome#index'
end
