Rails.application.routes.draw do
  get 'home/index'

  resources :ludums
  devise_for :users 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'home#index'
end