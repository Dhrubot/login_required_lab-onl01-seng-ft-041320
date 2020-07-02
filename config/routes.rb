Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#index'
  get '/login', to: 'sessions#new', as: 'sign_in'
  post '/login', to: 'sessions#create'
  get 'destroy', to: 'sessions#destroy'
  get 'secrets/show'
end
