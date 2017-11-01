Rails.application.routes.draw do
  resources :users
  get 'welcome/index'
  get  '/signup',  to: 'users#new'
  root 'welcome#index'
end
