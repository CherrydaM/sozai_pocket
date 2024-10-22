Rails.application.routes.draw do
  get 'users/show'
  resources :posts
  devise_for :users
  get 'homes/about'
  root to: "homes#top"
  get "about",to: "homes#about"
  get 'users/:id', to: 'users#show', as: 'user'
end
