class CreateReparacions < ActiveRecord::Migration
  def change
    create_table :reparacions do |t|
      t.string :rep_direccion
      t.float :rep_distancia
      t.string :rep_comentario
      t.string :rep_estado
      t.date :rep_fecha_in
      t.date :rep_fecha_term
      t.integer :bicicleta_id
      t.integer :calificacion_id

      t.timestamps null: false
    end
  end
end
