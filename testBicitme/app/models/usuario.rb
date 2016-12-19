class Usuario < ActiveRecord::Base
	has_many :Ciclistum
	has_many :Encargado_taller
end
