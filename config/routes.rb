Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/calc', to: 'calculator#calcview'
  get '/ckgclerk', to: 'calculator#ckgclerk'
  # Defines the root path route ("/")
  # root "articles#index"
end
