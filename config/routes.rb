Rails.application.routes.draw do
  resources :users
  get 'welcome/index'
  root 'welcome#index'
  resources :tasks

  get 'tasks/:id/complete/:completed', to: 'tasks#complete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
