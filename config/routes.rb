Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :offers, only: [:index, :show, :new, :create] do
    resources :deals, only: [:new, :create]
  end

  resources :deals, only: [:index] do
    post :approve
    post :deny
  end
end
