Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index]
  get '/users/:username/', to: 'users#profile', as: :user_profile
  get 'users/:username/manage', to: 'users#manage', as: :manage_profile
  root to: 'pages#home'

  resources :offers do
    resources :deals, only: [:new, :create]
  end

  resources :deals, only: [:index] do
    member do
      post :approve
      post :deny
    end
  end
end
