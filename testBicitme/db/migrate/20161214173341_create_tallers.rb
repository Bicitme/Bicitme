class CreateTallers < ActiveRecord::Migration
  def change
    create_table :tallers do |t|
      t.string :taller_nombre
      t.string :taller_patente
      t.string :taller_direccion
      t.string :taller_web_page
      t.integer :taller_cant_den
      t.integer :taller_cant_cont_den
      t.string :taller_descripcion
      t.float :taller_calificacion
      t.string :taller_fono
      t.string :taller_estado
      t.integer :comuna_id
      t.integer :encargado_id

      t.timestamps null: false
    end
  end
end
