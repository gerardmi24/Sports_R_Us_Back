Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :teams, only: [:index, :show]
  resources :sports, only: [:index]
  resources :favorites, only: [:index, :show, :create, :new, :destroy, :update, :edit]

  # post "/register", to: "auth#register"
  # root to: 'team#index'

end
