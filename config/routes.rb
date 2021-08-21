Rails.application.routes.draw do
  root to: "homes#top"
  get "about" => "homes#about"
  devise_for :users
  resources :books, only: [:index, :show, :new, :create]
  resources :users, only: [:index, :show, :edit]
 end
