Rails.application.routes.draw do
  get 'replies/new'

  get 'replies/create'

  get 'replies/show'

  get 'posts/new'

  get 'posts/create'

  get 'posts/:id/show' => 'posts#show'
  get 'posts/:id/reply' => 'posts#reply'
  post 'posts/:id/reply/create' => 'replies#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  match '/login', to: 'home#login', :via => [:get]
  match '/dashboard', to:'home#dashboard', :via => [:get]

  devise_for :users
  resources :posts, :replies
end
