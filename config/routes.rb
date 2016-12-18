Rails.application.routes.draw do
  resources :presupuestos
  get 'registrarpresupuesto', to: 'presupuestos#new', as: 'registrarpresupuesto'
  get 'editarpresupuesto', to: 'presupuestos#index', as: 'editarpresupuesto'
  resources :reparacions
  get 'registrarreparacion', to: 'reparacions#new', as: 'registrarreparacion'
  get 'editarreparacion', to: 'reparacions#index', as: 'editarreparacion'
  resources :calificacions
  get 'registrarcalificacion', to: 'calificacions#new', as: 'registrarcalificacion'
  get 'editarcalificacion', to: 'calificacions#index', as: 'editarcalificacion'
  resources :postulacions
  get 'registrarpostulacion', to: 'postulacions#new', as: 'registrarpostulacion'
  get 'editarpostulacion', to: 'postulacions#index', as: 'editarpostulacion'
  resources :tallers
  get 'registrartaller', to: 'tallers#new', as: 'registrartaller'
  get 'editartaller', to: 'tallers#index', as: 'editartaller'
  resources :comunas
  get 'registrarcomuna', to: 'comunas#new', as: 'registrarcomuna'
  get 'editarcomuna', to: 'comunas#index', as: 'editarcomuna'
  resources :administradors
  get 'bienvenida', to: 'administradors#new', as: 'bienvenida'
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
