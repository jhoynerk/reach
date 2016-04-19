Rails.application.routes.draw do  
  devise_for :users
  resources :potential_clients
  resources :built_withs 
  resources :statistics, only: :index
  get "range_date", to: "statistics#range_date"
  
  root 'dashboard#index'

  devise_scope :user do
    get "login", to: "devise/sessions#new", as: :login
  end
  
  post 'csv/import', to: 'csv#import', as: :import_csv
  post 'csv/export', to: 'csv#export', as: :export_csv
  post 'csv/import_email_rejected', to: 'csv#import_email_rejected', as: :import_email_rejected_csv
end
