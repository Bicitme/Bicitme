class AddMyColumnToBicicleta < ActiveRecord::Migration
  def change
    add_column :bicicleta, :ciclista_id, :integer
  end
end
