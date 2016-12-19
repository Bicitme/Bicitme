class CreateCalificacions < ActiveRecord::Migration
  def change
    create_table :calificacions do |t|
      t.float :cal_puntuacion

      t.timestamps null: false
    end
  end
end
