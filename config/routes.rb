Rails.application.routes.draw do
  get 'sessions/new'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

 #get '/signin', to: 'sessions#new' 
 # get '/signout', to: 'sessions#destroy' 
  #get '/signin', to: 'sessions#usernew'
  #get '/signout', to: 'sessions#userdestroy'
  #post '/sessions/create', to:'sessions#usercreate'
  
  

  get "/home", to:"home#index"
  get "/pricing", to:"moviepriceplan#pricing"

  get "/contacts", to:"contacts#new"
  post "/contacts", to:"contacts#create"

 
  get "/signin", to:"user#signin"
  get "/signup", to:"user#signup"
  post "/signup",  to:"user#create"
  post "/signin", to:"user#verify"
  

  
  get "/movie/", to:"movie#index"
  get "/playmovie/:id", to:"movie#playmovie"
  get "/animation/", to:"movie#animation"
  get "/english/", to:"movie#english"
  get "/hindi/", to:"movie#hindi"
  get "/romantic/", to:"movie#romantic"
  get "/sports/", to:"movie#sports"
 

  resources :home
  resources :user
  resources :contacts, only: [:new, :create]
 
  resources :sessions, only: [:usernew, :usercreate,:userdestroy]
  #instead of previous line we can give thispost 'sessions/create'
  root "home#index"

end
