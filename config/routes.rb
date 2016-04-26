Rails.application.routes.draw do
  root to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  get    'edit'  , to: 'users#show'
  post   'edit'  , to: 'users#edit'
  get    'update', to: 'users#show'
  delete 'logout', to: 'sessions#destroy'

  resources :users, :edit, :update
  resources :sessions, only: [:new, :update, :destroy]
end