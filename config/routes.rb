Rails.application.routes.draw do
  root 'products#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products	
  resources :cart_item
  get '/products' => 'products#index'
  get '/products/new' => 'products#new' 
  post '/products' => 'products#create'
end
