Rails.application.routes.draw do
  resources :users, only: [:index]
  get '/users/:username/profile', to: 'users#profile', as: :user_profile
  get 'users/:username/profile/manage', to: 'users#manage', as: :manage_profile
  devise_for :users
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
