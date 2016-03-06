Rails.application.routes.draw do  
  devise_for :users
  resources :potential_clients
  resources :built_withs

  root 'dashboard#index'

  devise_scope :user do
    get "login", to: "devise/sessions#new", as: :login
  end

end
