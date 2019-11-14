Rails.application.routes.draw do
  resources :users do
    resources :pests 
  end

  get '/welcome', to: 'welcome#index', as: 'welcome' 

  get '/adoptions', to: 'adoptions#index', as: 'adoptions'
  patch '/users/:user_id/pests/:id/abandon', to: 'pests#abandon', as: 'abandon'
  patch '/users/:user_id/pests/:id/primary', to: 'pests#primary', as: 'primary'
  patch '/users/:user_id/pests/:id/adopt', to: 'pests#adopt', as: 'adopt'


  get "/login", to: 'sessions#new', as: 'login'
  post "sessions", to: 'sessions#create', as: 'sessions'
  delete "sessions", to: 'sessions#destroy', as: 'clear_session'
  # # User Routes
  # get 'users'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/delete'
  # #Pests Routes
  # get 'pests/index'
  # get 'pests/show'
  # get 'pests/new'
  # get 'pests/create'
  # get 'pests/edit'
  # get 'pests/update'
  # get 'pests/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
