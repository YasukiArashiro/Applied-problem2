Rails.application.routes.draw do
  devise_for :users
  get 'home/about' => "home#about"
  root 'home#top'

  resources :users, only: [:show,:index,:edit,:update]
  resources :books, only: [:show, :index, :edit, :create, :update, :destroy]
end