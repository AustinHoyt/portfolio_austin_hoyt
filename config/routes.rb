Rails.application.routes.draw do

  root to: 'demo#index'

  
  match '/contacts' => 'demo#index', :via => :get
  match '/contacts' => 'demo#submit', :via => :post
 
end
