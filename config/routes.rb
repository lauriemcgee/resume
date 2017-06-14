Rails.application.routes.draw do
  get '/' => 'pages#index'

  get '/yourresume' => 'users#index'
  get '/newuser' => 'users#new'
  post '/users' => 'users#create'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
