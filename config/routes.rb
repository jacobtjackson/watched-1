Rails.application.routes.draw do
  root 'episodes#index'
  devise_for :users
  get 'users/profile', to: 'users#show'
  resources :episodes, only: [:index] do
    put 'watched_episode', to: "episodes#watched", as: :watched, on: :member
    put 'unwatched_episode', to: "episodes#unwatched", as: :unwatched, on: :member
  end
end
