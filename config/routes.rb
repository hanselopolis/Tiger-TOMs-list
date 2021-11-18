Rails.application.routes.draw do

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
  patch 'categories/:category_id/:id', to: 'ads#update'
  put 'categories/:category_id/:id', to: 'ads#update'
  get 'categories/:category_id/:id/edit', to: 'ads#edit', 
  as: 'edit_ad'
  
end
