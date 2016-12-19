class CreatePostulacions < ActiveRecord::Migration
  def change
    create_table :postulacions do |t|
      t.integer :post_tiempo_taller
      t.string :post_referencia_1
      t.string :post_referencia_2
      t.string :post_estado
      t.integer :encargado_id
      t.integer :administrador_id

      t.timestamps null: false
    end
  end
end
