Rails.application.routes.draw do
  
  # Categories
  get 'categories', to: 'categories#index', 
  as: 'categories'
  get 'categories/:id', to: 'categories#show', 
  as: 'category'

  # Ads
  get 'categories/:category_id/new', to: 'ads#new',
  as: 'new_ad'
  get 'categories/:category_id/:id', to: 'ads#show', 
  as: 'ad'
  
end
