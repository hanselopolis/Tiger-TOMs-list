Rails.application.routes.draw do

  root to: redirect('/home')
  
  get 'home', to: 'homepage#home', as: 'home' 
   
end
