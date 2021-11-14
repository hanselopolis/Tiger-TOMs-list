Rails.application.routes.draw do
  get 'categories', to: 'categories#index', as: 'categories'
  get 'categories/:id', to: 'categories#show', as: 'category'
end
