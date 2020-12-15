Rails.application.routes.draw do
  resources :posts
  resources :categories
  get 'posts/tag'
  devise_for :users
  root to: 'pages#home'
  # root to: 'pages#test'
  get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
