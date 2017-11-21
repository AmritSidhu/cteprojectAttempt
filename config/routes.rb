Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  root 'home#index'
  get '/product', to: 'products#new'
  post '/product', to: 'products#create'

  get '/login', to: 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
