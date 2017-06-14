Rails.application.routes.draw do
  get '/' => 'pages#index'

  get '/newuser' => 'users#new'
  post 'users' => 'users#create'
end
