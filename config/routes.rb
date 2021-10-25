Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  get '/' => 'users#index'
  post '/users' => 'users#create'
  post '/sessions' => 'sessions#create'
  get '/dashboard' => 'feeds#index'
end
