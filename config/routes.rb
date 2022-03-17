Rails.application.routes.draw do
  resources :progress_reports
  resources :careers
  resources :commitments
  resources :plans
  root 'home#index'
  get 'home/about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
end
