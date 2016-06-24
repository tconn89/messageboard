Rails.application.routes.draw do
  get 'posts/new'

  get 'posts/create'

  get 'posts/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  match '/login', to: 'home#login', :via => [:get]
  match '/dashboard', to:'home#dashboard', :via => [:get]
  devise_for :users
  resources :posts
end
