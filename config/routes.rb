Rails.application.routes.draw do
  resources :profiles
  resources :users do
    resources :profiles
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
