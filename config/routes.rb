Rails.application.routes.draw do

  #home
  root 'home#index'
  get 'home/about'
  
  #resources
  resources :users, only: [:show]
  resources :progress_reports, :except => [:delete]
  resources :commitments
  #post '/commitments', to: 'commitments#create', as: 'create_commitment'
  resources :plans

  #resource nesting
  resources :careers do 
    resources :plans, only: [:show, :new] 
  end

  #scopes 
  get 'careers/highest-paying' => 'careers#show'
  get 'careers/lowest-paying' => 'careers#show'
  get 'plans/fewest-steps' => 'plans#show'
  get 'plans/most-steps' => 'plans#show'

  #Devise routes
  devise_for :users, controllers: {registrations: "registrations", omniauth_callbacks: "callbacks"}

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
