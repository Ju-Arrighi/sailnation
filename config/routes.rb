Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :services, only: [:index, :new, :create, :show]

    resources :users, only: [:show]

    # get 'dashboard' to: "pages#user"
end
