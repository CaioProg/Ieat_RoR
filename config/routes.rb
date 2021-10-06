Rails.application.routes.draw do
  resources :products, only: [:index, :new, :create]
  resources :restaurantts
  devise_for :users
  root 'home#index' 
end
