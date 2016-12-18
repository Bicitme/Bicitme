class CreateAdministradors < ActiveRecord::Migration
  def change
    create_table :administradors do |t|
      t.string :admin_run
      t.integer :admin_cant_aceptados
      t.integer :admin_cant_ban_cic
      t.integer :admin_cant_ban_taller
      t.integer :usuario_id

      t.timestamps null: false
    end
  end
end
