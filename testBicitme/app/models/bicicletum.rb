class Bicicletum < ActiveRecord::Base
	belongs_to :Ciclista
	def combined_value
    "Marca: #{self.bic_marca} Modelo: #{self.bic_modelo} Color: #{self.bic_color_princ}"
  end
end
