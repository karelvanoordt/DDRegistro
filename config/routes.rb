Rails.application.routes.draw do
  resources :clients
  devise_for :users
  root 'clients#index'

end
