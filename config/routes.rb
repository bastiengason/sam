Rails.application.routes.draw do
  get 'dashboard/category'

  devise_for :users
  root to: 'pages#home'

  get 'tasks/select_category', to: 'tasks#select_category'

  resources :tasks
  resources :categories, only: [:index, :show]
  # resources :users, only: [:show]
  resources :notifications, only: [:create, :update]
  resource :profile

end
