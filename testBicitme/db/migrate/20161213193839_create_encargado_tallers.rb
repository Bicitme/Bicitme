class CreateEncargadoTallers < ActiveRecord::Migration
  def change
    create_table :encargado_tallers do |t|
      t.string :enc_run
      t.string :enc_rol
      t.integer :enc_tiempo
      t.string :enc_estado
      t.integer :usuario_id

      t.timestamps null: false
    end
  end
end
