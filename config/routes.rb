Rails.application.routes.draw do

  resources :purchases
  devise_for :users
  #homepage 
  root to: redirect('/home')
  get 'home', to: 'homepage#home', as: 'home' 
  
  # Categories
  get 'categories', to: 'categories#index', as: 'categories'
  get 'categories/:id', to: 'categories#show', as: 'category'
  post 'categories/:id', to: 'ads#create'

  # Ads
  get 'categories/:category_id/new', to: 'ads#new',
  as: 'new_ad'
  get 'categories/:category_id/:id', to: 'ads#show', 
  as: 'ad'
  

  # Purchases
  get 'categories/:category_id/ads/:ad_id/buy', to: 'purchases#new', as: 'purchase_item'
  post 'categories/:category_id/ads/:ad_id/buy', to: 'purchases#create'
  


end
