Rails.application.routes.draw do

  resources :user_stocks
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
  
end
