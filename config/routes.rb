Rails.application.routes.draw do
  #get 'computers/index'
  #get 'computers/show'
  #get 'computers/new'
  #get 'computers/edit'
  #get 'computers/create'
  #get 'computers/update'
  #get 'computers/destroy'
  
  resources :equipment_profiles, only: [:new, :index, :create, :show, :destroy]
  resources :pcs, only: [:index, :new, :create]
  root to: 'welcome#index'
  resources :sessions, only: [:new, :create, :destroy]
  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"

end
