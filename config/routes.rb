Rails.application.routes.draw do
  root 'users#show'

  get :profile, to: 'users#show'

  resources :users, param: :username
end
