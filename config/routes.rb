Rails.application.routes.draw do

  root to: 'demo#index'
  resources :contacts

end
