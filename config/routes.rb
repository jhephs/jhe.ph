Rails.application.routes.draw do
  root 'posts#index'
  get :register, to: 'users#new'

  resources :posts, param: :slug
  resource :profile, controller: :users, except: :new
  resources :users, param: :username
end
