Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/new'
  get 'welcome/index'
  root 'welcome#index'
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
