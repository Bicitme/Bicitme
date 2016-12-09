class CreateTipoUsuarios < ActiveRecord::Migration
  def change
    create_table :tipo_usuarios do |t|
      t.text :t_us_cod
      t.text :t_us_descripcion

      t.timestamps null: false
    end
  end
end
