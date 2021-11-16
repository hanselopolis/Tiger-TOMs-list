Rails.application.routes.draw do

  #homepage 
  root to: redirect('/home')
  get 'home', to: 'homepage#home', as: 'home' 
  
  # Categories
  get 'categories', to: 'categories#index', as: 'categories'
  get 'categories/:id', to: 'categories#show', as: 'category'

  # Ads
  get 'categories/:category_id/:id', to: 'ads#show', as: 'ad'
  
  
  

end
