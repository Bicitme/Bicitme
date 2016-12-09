class Usuario < ActiveRecord::Base
	belongs_to :Tipo_usuario
	has_many :Ciclistum

end
