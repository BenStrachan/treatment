Rails.application.routes.draw do

  get 'assessments/index'

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
    resources :test_confidences
    resources :test_conclusions
    resources :tests
    get 'settings/index'
  end
end
