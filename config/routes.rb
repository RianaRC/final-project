Rails.application.routes.draw do
  resources :organisateurs
  resources :evenements
  devise_for :users, controllers: {registrations: "registrations"}
  root 'home#index'

  post '/', to: 'home#newcomment'
  delete '/comment/:id_event/:id_comment', to: 'home#delcomment', as: "del_comment"

  get 'events/:id/show', to: 'home#show', as: 'event_show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
