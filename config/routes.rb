Rails.application.routes.draw do
  #authentification pages
  devise_for :users

  #ressources pages
  resources :posts
  resources :categories
  get 'posts/tag'



  #home page
  root to: 'pages#home'
  # root to: 'pages#test'
  get 'pages/index'

  #errors pages
  #
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
