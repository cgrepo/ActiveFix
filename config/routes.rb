Rails.application.routes.draw do
  get 'computers/index'

  get 'computers/show'

  get 'computers/new'

  get 'computers/edit'

  get 'computers/create'

  get 'computers/update'

  get 'computers/destroy'

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
