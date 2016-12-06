Rails.application.routes.draw do
  get 'notifications/index'

  get 'notifications/new'

  get 'notifications/create'

  get 'notifications/update'

  get 'notifications/edit'

  get 'notifications/show'

  get 'notifications/destroy'

  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/update'

  get 'users/edit'

  get 'users/show'

  get 'users/destroy'

  get 'tasks/index'

  get 'tasks/new'

  get 'tasks/create'

  get 'tasks/update'

  get 'tasks/edit'

  get 'tasks/show'

  get 'tasks/destroy'

  get 'categories/show'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
