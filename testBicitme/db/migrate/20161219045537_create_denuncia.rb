class CreateDenuncia < ActiveRecord::Migration
  def change
    create_table :denuncia do |t|
      t.string :den_denunciante
      t.string :den_descripcion
      t.date :den_fecha
      t.string :den_estado
      t.integer :ciclista_id
      t.integer :taller_id
      t.integer :reparacion_id

      t.timestamps null: false
    end
  end
end
