Rails.application.routes.draw do
  resources :products
  resources :sessions, only: %w(new create destroy)

  root to: 'sessions#new'
end
