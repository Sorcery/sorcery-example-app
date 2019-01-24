Rails.application.routes.draw do
  root to: 'users#index'

  resources :users, :admins do
    get :login_from_http_basic, on: :collection
    get :activate, on: :member
  end

  resources :user_sessions, only: [:new, :create, :destroy]
  resources :password_resets, only: [:create, :edit, :update]

  get 'login' => 'user_sessions#new', as: :login
  delete 'logout' => 'user_sessions#destroy', as: :logout

  resource :oauth do
    get :callback, on: :collection
  end

  get 'oauth/:provider' => 'oauths#oauth', as: :auth_at_provider
end
