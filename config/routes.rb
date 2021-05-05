Rails.application.routes.draw do
 # devise_for :users
  resources :accessories
  resources :products
  resources :news
  resources :about
  resources :search
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords:'users/passwords',
    registrations:'users/registrations'
  }
  root 'home#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
