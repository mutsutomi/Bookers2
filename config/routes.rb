Rails.application.routes.draw do
  root to: "homes#top"
  get "home/about" => "homes#about"
  devise_for :users
  resources :books, only: [:index, :show, :create, :edit, :update] do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  delete "books/:id" => "books#destroy", as: "destroy_book"
  resources :users, only: [:index, :show, :edit, :update]
 end
