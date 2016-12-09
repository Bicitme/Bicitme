class CreateBicicleta < ActiveRecord::Migration
  def change
    create_table :bicicleta do |t|
      t.integer :bic_id
      t.string :bic_marca
      t.string :bic_modelo
      t.string :bic_tipo
      t.integer :bic_aro
      t.integer :bic_velocidades
      t.string :bic_color_princ
      t.string :bic_img_1
      t.string :bic_img_2
      t.string :bic_num_serie
      t.string :bic_estado_robo
      t.string :bic_cic_run

      t.timestamps null: false
    end
  end
end
