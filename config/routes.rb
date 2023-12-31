Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :sessions, only: [:new, :create, :destroy]

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  get 'sessions', to: 'sessions#new'

  resources :users, only: [:new, :create]
  get 'signup', to: 'users#new'

  resources :tasks
  get 'tasks/:id/complete/:completed', to: 'tasks#complete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
