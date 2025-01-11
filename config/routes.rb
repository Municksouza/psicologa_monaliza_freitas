# config/routes.rb

Rails.application.routes.draw do
  root 'pages#home'

  # Devise routes for Psychologists with custom controllers
  devise_for :psychologists, controllers: {
    registrations: 'psychologists/registrations',
    sessions: 'psychologists/sessions'
  }

  # Devise routes for Patients
  devise_for :patients

  # Dashboards
  get 'psychologist_dashboard', to: 'psychologists#dashboard', as: :psychologist_dashboard
  get 'dashboard', to: 'patients#dashboard', as: :patient_dashboard

  # Resources
  resources :appointments
  resources :availabilities
  resources :ratings, only: [:create, :destroy]

  # Static Pages
  get 'about', to: 'pages#about'
  get 'services', to: 'pages#services'
  get 'contact', to: 'pages#contact'
end
