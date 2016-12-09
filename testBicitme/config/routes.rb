Rails.application.routes.draw do
  get 'vista/index'
  get 'vista/ciclista'
  get 'vista/taller'
  root 'vista#index'
  get '/' => 'vista#index'
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'usuarios#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :bicicleta
  resources :usuarios
end
