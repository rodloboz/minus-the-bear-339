Rails.application.routes.draw do
  mount StripeEvent::Engine, at: '/stripe-webhooks'

  devise_for :users
  root to: 'teddies#index'

  resources :teddies, only: :show

  resources :orders, only: %i[show create] do
    resources :payments, only: :new
  end
end
