Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'tasks/select_category', to: 'tasks#select_category'

  resources :tasks
  resources :categories, only: [:index, :show]
  # resources :users, only: [:show]
  resources :notifications, only: [:create, :update]
  resource :profile

  get 'notification/done' => 'notifications#notifdone', as: :notif_done
  get 'notification/not_done' => 'notifications#notifcancell', as: :notif_cancell


end
