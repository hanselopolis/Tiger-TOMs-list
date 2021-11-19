Rails.application.routes.draw do

  resources :purchases
  # Users
  devise_for :users

  post 'users', to: 'users#create'

  get 'users/new', to: 'users#new', as: 'new_user'
  
  get 'users/:id', to: 'users#show', as: 'user'
  patch 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'

  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'

  # Homepage 
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
  patch 'categories/:category_id/:id', to: 'ads#update'
  put 'categories/:category_id/:id', to: 'ads#update'
  get 'categories/:category_id/:id/edit', to: 'ads#edit', 
  as: 'edit_ad'
  

  # Purchases
  get 'purchases', to: 'purchases#index', as: 'purchases_index'
  get 'categories/:category_id/ads/:ad_id/buy', to: 'purchases#new', as: 'purchase_item'
  #post 'purchases', to: 'purchases#create'
  post 'categories/:category_id/ads/:ad_id/buy', to: 'purchases#create'
  patch 'categories/:category_id/ads/:ad_id/buy', to: 'purchases#update'
  put 'categories/:category_id/ads/:ad_id/purchases/:id', to: 'purchases#update'

  
  


end
