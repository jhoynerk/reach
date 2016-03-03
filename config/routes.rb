Rails.application.routes.draw do  
  resources :potential_clients
  devise_for :users
  resources :built_withs

  root 'dashboard#index'

  devise_scope :user do
    get "login", to: "devise/sessions#new", as: :login
  end

end
