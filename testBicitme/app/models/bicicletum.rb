class Bicicletum < ActiveRecord::Base
	belongs_to :Ciclista
	def combined_value
    "#{self.bic_marca}[#{self.bic_modelo}]"
  end
end
