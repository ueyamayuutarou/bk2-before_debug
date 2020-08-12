Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
  	resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  get 'home/about'
  get "users/:id" => "users#show"
end