Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :services, only: [:index, :new, :create, :show]

    resources :users, only: [:show]

    resources :reviews, only: [:show, :create]


    # get 'dashboard' to: "pages#user"
    #testing update
end
