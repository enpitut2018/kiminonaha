Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :users do
    resources :profiles
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'
end
