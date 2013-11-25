class CreateAmbits < ActiveRecord::Migration
  def change
    create_table :ambits do |t|
      t.string :ambito_criminale
      t.text :note_ambito

      t.timestamps
    end
  end
end
