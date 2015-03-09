Rails.application.routes.draw do
  devise_for :users, path: ""

  root 'static#index'

  get 'about' => 'static#about'
  get 'privacy' => 'static#privacy'
  get 'terms' => 'static#terms'
  
  resources :users do
    member do
      get 'hosting'
      get 'participating'
      get 'groups'
    end
  end

  resources :groups do
    member do
      get 'members'
      get 'hosting'
    end
  end

  resources :events do
    member do
      get 'participants'
    end
  end

  # Utils
  get 'utils/map' => 'static#map'
end
