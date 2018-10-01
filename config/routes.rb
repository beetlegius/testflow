Rails.application.routes.draw do
  resources :sessions, only: %w(new create destroy)

  root to: 'sessions#new'
end
