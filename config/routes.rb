Rails.application.routes.draw do
  root to: 'toppages#index'
  
  resources :tasks, only: [:show, :new, :edit, :update, :create, :destroy]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:show, :new, :create]
end
