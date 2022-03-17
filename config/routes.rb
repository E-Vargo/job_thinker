Rails.application.routes.draw do
  resources :progress_reports
  resources :careers
  resources :commitments
  resources :plans
  root 'home#index'
  get 'home/about'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
