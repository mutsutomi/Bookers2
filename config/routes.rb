Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  resources :books, only: [:index, :show]
  resources :users, only: [:index, :show, :edit]
 end
