Rails.application.routes.draw do
  root to: "homes#top"
  get "about" => "homes#about"
  devise_for :users
  resources :books, only: [:index, :show, :create, :edit, :update]
  delete "books/:id" => "books#destroy", as: "destroy_book"
  resources :users, only: [:index, :show, :edit, :update]
 end
