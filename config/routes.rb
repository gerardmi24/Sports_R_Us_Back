Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :teams, only: [:index]
  resources :sports, only: [:index]
  resources :favorites, only: [:index, :show, :create, :new, :destroy, :update, :edit]
end
