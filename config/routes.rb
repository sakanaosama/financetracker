Rails.application.routes.draw do

  resources :user_stocks
  # only: [:create, :destroy]
  # auto added by 'rails g controller'
  # get 'users/my_portfolio'

  devise_for :users
  root 'welcome#index'

  #259: 
  get 'my_portfolio', to: 'users#my_portfolio'
  #devise_for :models
  # get 'welcome/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'application#helloworld'
  get 'search_stock', to: 'stocks#search'
  
  get 'search_friend', to: 'users#search'
  get 'my_friends', to: 'users#my_friends'
  

  resources :friendships, only: [:create, :destroy]
  resources :users, only: [:show]

end
