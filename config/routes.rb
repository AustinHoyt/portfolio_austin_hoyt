Rails.application.routes.draw do

  root to: 'demo#index'
  get 'resume', to: 'demo#resume'

end
