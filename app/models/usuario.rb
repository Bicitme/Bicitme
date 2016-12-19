class Usuario < ActiveRecord::Base
	has_many :Ciclistum
	has_many :Encargado_taller
	validates :usuar_run, presence: true
	validates :usuar_nom_usuario, presence: true
	validates :usuar_contrasegna, presence: true
	validates :usuar_correo, presence: true
	validates :usuar_correo, uniqueness: true
	validates :usuar_run, uniqueness: true
	
end
