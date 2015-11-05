Rails.application.routes.draw do
  
  resources :posts
  devise_for :users
  
  root 'pages#home'
  
  # PAGES
  get '/feed' => 'pages#feed'
  get '/user/:username' => 'pages#profile' # profiles must be attached to a username
  
end
