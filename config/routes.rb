Rails.application.routes.draw do
  
  resources :posts
  resources :comments
  devise_for :users
  
  root 'pages#home'
  
  # PAGES
  get '/feed' => 'pages#feed'
  get '/user/:username' => 'pages#profile' # profiles must be attached to a username
  get '/contact' => 'pages#contact'
  get '/FAQ' => 'pages#FAQ'
  get '/TOS' => 'pages#terms'
  get '/post/:id' => 'pages#post'
  
  get '/about' => 'pages#about'
  get '/privacy' => 'pages#privacy'
  
end
