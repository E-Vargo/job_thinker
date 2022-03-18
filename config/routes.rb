Rails.application.routes.draw do

  #home
  root 'home#index'
  get 'home/about'


  #resources
  resources :progress_reports, :except => [:delete]
  resources :commitments
  resources :plans
  get '/users', to: 'plans#index'

  #resource nesting
  resources :careers do 
    resources :plans, only: [:show, :new] 
  end

  #Devise routes
    devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

    devise_scope :user do 
      get 'login', to: 'devise/sessions#new'
    end

    devise_scope :user do 
      get 'logout', to: 'devise/sessions#destroy'
    end

    devise_scope :user do
      get 'signup', to: 'devise/registrations#new'
    end
end
