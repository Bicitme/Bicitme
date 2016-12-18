class CreateCiclista < ActiveRecord::Migration
  def change
    create_table :ciclista do |t|
      t.string :cic_run
      t.integer :cic_cant_rep
      t.integer :cic_cant_den
      t.string :cic_fono
      t.string :cic_estado
      t.integer :usuario_id

      t.timestamps null: false
    end
  end
end
