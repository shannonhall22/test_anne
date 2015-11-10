Rails.application.routes.draw do

  root 'pages#home'
  get '/privacypolicy' => 'pages#privacypolicy'
  post '/contacts' => 'pages#create', as: 'contacts'

end
