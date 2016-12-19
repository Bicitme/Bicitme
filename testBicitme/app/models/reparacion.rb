class Reparacion < ActiveRecord::Base
  
  def mostrar_combinado
    "Comentario: #{self.rep_comentario} Direccion: #{self.rep_direccion} Fecha: #{self.rep_fecha_in}"
  end
end
