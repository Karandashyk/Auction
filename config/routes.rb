Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'persons/profile'

  get '/about_us', to: 'welcome#about'
  root 'welcome#index'

  resources :users, only: [:show]
  resources :users_products
  resources :deals
  resources :money
  resources :locations
  resources :products
end
