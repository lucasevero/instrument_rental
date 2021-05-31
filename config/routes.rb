Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :offers, only: [:index, :show, :new, :create] do
    resources :deals, only: [:new, :create]
  end

  resources :deals, only: [:index]

  post '/deals/:id/approve', to: 'deals#approve', as: :approve_deal
  post '/deals/:id/deny', to: 'deals#deny', as: :deny_deal
end
