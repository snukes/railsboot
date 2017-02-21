Rails.application.routes.draw do
  
  root 'home#index'
  
  get 'home/index'
  get '/beer/create', to: 'beer#create'
  get '/beer', to: 'beer#index'  
  

end
