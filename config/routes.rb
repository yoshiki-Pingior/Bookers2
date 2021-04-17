Rails.application.routes.draw do

  root to: 'homes#top'
  get "home/about", to: 'homes#about', as: :homes_about

  devise_for :users

  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]

  resources :users, only: [:index, :show, :edit, :update] 
  post 'users/:id' => 'books#create'
end
