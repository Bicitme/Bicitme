Rails.application.routes.draw do
  resources :encargado_tallers
  get 'registrarenc', to: 'encargado_tallers#new', as: 'registrarenc'
  get 'editarenc', to: 'encargado_tallers#index', as: 'editarenc'
  resources :ciclista
  get 'registrartelf', to: 'ciclista#new', as: 'registrartelf'
  get 'editartelf', to: 'ciclista#index', as: 'editartelf'
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
