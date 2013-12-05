class CreateDossiersNames < ActiveRecord::Migration
  def change
 create_table :dossiers_names, :id=>false do |t|
      t.integer :name_id
      t.integer :dossier_id

      t.timestamps
    end
  end
end



