Rails.application.routes.draw do
 # devise_for :users
  resources :accessories, only: [:index, :show]
  resources :products, only: [:index, :show]
  resources :news, only: [:index, :show]
  resources :about, only: [:index]
  resources :search, only: [:index, :show]
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords:'users/passwords',
    registrations:'users/registrations'
  }
  root 'home#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
