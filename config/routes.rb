Rails.application.routes.draw do
  #get 'welcome/index'
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  get "goin" => "welcome#index"
  root to: 'welcome#index'
  resources :sessions, only: [:new, :create, :destroy]
  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"
end
