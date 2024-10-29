Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  resources :posts
  resources :users, only: [:show, :edit, :update, :destroy]
  get "about",to: "homes#about"
end
