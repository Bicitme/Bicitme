class CreateComunas < ActiveRecord::Migration
  def change
    create_table :comunas do |t|
      t.string :com_nombre

      t.timestamps null: false
    end
  end
end
