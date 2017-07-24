Rails.application.routes.draw do

  root to: 'demo#index'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
