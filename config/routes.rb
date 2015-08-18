Rails.application.routes.draw do
  root 'users#show'
  get :register, to: 'users#new'

  resource :profile, controller: :users, except: :new
  resources :users, param: :username
end
