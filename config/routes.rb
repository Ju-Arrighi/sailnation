Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :services, only: [:index, :new, :create, :show]

    resources :users, only: [:show]

    resources :reviews, only: [:show, :create]

    # looks like we might need a a route in here
    
    # get 'dashboard' to: "pages#user"
end
