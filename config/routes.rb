Rails.application.routes.draw do
  get '/products', to: 'products#index'
  get 'product/:id', to: 'products#show' , as: 'product'
end
