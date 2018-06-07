Rails.application.routes.draw do
  resources :organisateurs
  resources :evenements
  devise_for :users
  root 'home#index'

  post '/', to: 'evenements#newcomment'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
