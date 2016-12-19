class CreatePresupuestos < ActiveRecord::Migration
  def change
    create_table :presupuestos do |t|
      t.string :prep_precio_min
      t.integer :prep_precio_max
      t.string :prep_comentario
      t.string :prep_estado
      t.integer :taller_id
      t.integer :reparacion_id

      t.timestamps null: false
    end
  end
end
