Rails.application.routes.draw do
  resources :mycategories
  resources :categories
  get 'pins/index'
  devise_for :users
  root to: 'pages#home'
  resources :pins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
