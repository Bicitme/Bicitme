class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :usuar_run
      t.string :usuar_ap_pat
      t.string :usuar_ap_mat
      t.string :usuar_nom_usuario
      t.string :usuar_contrasegna
      t.string :usuar_correo
      t.text :usuar_tipo_cod

      t.timestamps null: false
    end
  end
end
