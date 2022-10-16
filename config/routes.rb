Rails.application.routes.draw do
  devise_for :users
  resources :pastsales
  resources :upcomingsales
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'upcomingsales#index'

  get '/calc', to: 'calculator#calcview'
  get '/ckgclerk', to: 'calculator#ckgclerk'
  # Defines the root path route ("/")
  # root "articles#index"
end
