Rails.application.routes.draw do
    
  root to: 'demo#index'
  get 'about', to: 'demo#about'
  
  
end
