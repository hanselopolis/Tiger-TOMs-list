Rails.application.routes.draw do

  resources :favorite_ads
  resources :purchases
  devise_for :users
  
  resources :favorite_ads, only: [:create, :destroy]
  
  #homepage 
  root to: redirect('/home')
  get 'home', to: 'homepage#home', as: 'home' 

  # Users
  #get 'users', to:'users#index', as: 'users'
  post 'users', to: 'users#create'

  get 'users/new', to: 'users#new', as: 'new_user'
  
  get 'users/:id', to: 'users#show', as: 'user'
  patch 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'

  get 'users/:id/settings', to: 'users#settings', as: 'user_settings'
  get 'users/:id/ads', to: 'users#show_ads', as: 'user_ads'

  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  
  

  # Categories
  get 'categories', to: 'categories#index', as: 'categories'
  get 'categories/:id', to: 'categories#show', as: 'category' 
  

  # Ads
  post 'categories/:category_id/ads', to: 'ads#create', as: 'category_ads'
  get 'categories/:category_id/ads/new', to: 'ads#new',as: 'new_ad'
  get 'categories/:category_id/ads/:id', to: 'ads#show', as: 'ad'
  patch 'categories/:category_id/ads/:id', to: 'ads#update'
  put 'categories/:category_id/ads/:id', to: 'ads#update'
  delete 'categories/:category_id/ads/:id', to: 'ads#destroy'
  get 'categories/:category_id/ads/:id/edit', to: 'ads#edit', as: 'edit_ad'

  #search
  resources :ads, only: [:index] do
    collection do
       match 'search' => 'ads#search', via: [:get, :post], as: :search
     end
   end

  # Purchases
  get 'purchases', to: 'purchases#index', as: 'purchases_index'
  get 'categories/:category_id/ads/:ad_id/buy', to: 'purchases#new', as: 'purchase_item'
  post 'categories/:category_id/ads/:ad_id/buy', to: 'purchases#create'
  patch 'categories/:category_id/ads/:ad_id/buy', to: 'purchases#update'
  put 'categories/:category_id/ads/:ad_id/purchases/:id', to: 'purchases#update'

  get 'categories/:category_id/ads/:ad_id/purchases/:id/complete', to: 'purchase#complete', as: 'purchase_complete'

  # Favorites
  get 'favorites/:id', to: "favorite_ads#show", as: 'favorite'
  get 'favorites', to: 'favorite_ads#index', as: 'favorites'

  # Credit Cards
  get 'users/:id/credit_card', to: 'credit_cards#show', as: 'credit_card'
  post 'users/:id/credit_card', to: 'credit_cards#create'
  delete 'users/:id/credit_card', to: 'credit_cards#destroy'
  get 'users/:id/credit_card/new', to: 'credit_cards#new', as: 'new_credit_card'
  delete 'users/:id/credit_card/new', to: 'credit_cards#expired'

  # Conversations
  get 'users/:id/conversations', to: 'conversations#index', as: 'conversations'
  post 'users/:id/conversations', to: 'conversations#create'
  get 'users/:id/conversations/new', to: 'conversations#new', as: 'new_conversation'
  get 'users/:user_id/conversations/:id', to: 'conversations#show', as: 'conversation'
  

  # Messages
  get 'users/:user_id/conversations/:id/new', to: 'messages#new', as: 'new_message'
  post 'users/:user_id/conversations/:id', to: 'messages#create'
  


end
