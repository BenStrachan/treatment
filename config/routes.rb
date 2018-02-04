Rails.application.routes.draw do


  resources :test_confidences
  resources :test_conclusions
  resources :tests
  root to: 'visitors#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    invitations: 'users/invitations',
  }

  namespace :admin do
    resources :users
    resources :regions
    resources :diagnoses
    get 'settings/index'
  end
end
