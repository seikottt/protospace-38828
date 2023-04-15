Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes, only: [:index, :create, :new, :show, :edit, :update, :destroy]do
    resources :comments, only: [:create, :new]
  end
  resources :users, only: [:show]
end
