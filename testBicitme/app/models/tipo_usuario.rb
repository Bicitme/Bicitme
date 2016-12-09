class TipoUsuario < ActiveRecord::Base
  has_many :Usuarios
end
