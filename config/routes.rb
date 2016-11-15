Rails.application.routes.draw do

  resources :ongs
  resources :sessions
  delete '/logout', to: 'sessions#destroy', as: :logout_path

  # get 'ongs/:id' => 'ongs#show'
  root 'static_pages#home'

  # get 'ongs/new'

  # get 'sessions/new'
end
