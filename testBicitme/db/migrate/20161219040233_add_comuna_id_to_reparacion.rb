class AddComunaIdToReparacion < ActiveRecord::Migration
  def change
    add_column :reparacions, :comuna_id, :integer
  end
end
