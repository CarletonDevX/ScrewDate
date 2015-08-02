Rails.application.routes.draw do
  get 'sessions/new'

  root 'home#index'
  get 'signup' => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'home/index'

  resources :users
  resources :search
  get "/roommate" => "roommates#index"
end
