class CreateDossiers < ActiveRecord::Migration
  def change
    create_table :dossiers do |t|
      t.integer :numero
      t.date :data
      t.text :oggetto
      t.text :testo

      t.timestamps
    end
  end
end
