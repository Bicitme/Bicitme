class CreateRobos < ActiveRecord::Migration
  def change
    create_table :robos do |t|
      t.date :robo_fecha
      t.string :robo_direccion
      t.string :robo_comentario
      t.string :robo_img
      t.integer :comuna_id
      t.integer :bicicleta_id

      t.timestamps null: false
    end
  end
end
