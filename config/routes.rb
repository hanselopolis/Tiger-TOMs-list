Rails.application.routes.draw do

  root to: redirect('/home')
  
  get 'home', to: 'homepage#home', as: 'home' 
  
  get 'categories', to: 'categories#index', as: 'categories'
  get 'categories/:id', to: 'categories#show', as: 'category'
  
end
