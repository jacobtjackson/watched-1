Rails.application.routes.draw do
  root 'episodes#index'
  devise_for :users
  get 'users/profile', to: 'users#show'
end
