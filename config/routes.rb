Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :profile, only: [:show]

  resources :restaurants, only: [:index, :show]

  resources :orders, only: [:index, :show, :create]
end
