class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :cognome_nome
      t.string :luogo_nascita
      t.date :data_nascita
      t.string :cod_fiscale
      t.string :residenza
      t.string :via
      t.string :domicilio
      t.string :cittadinanza
      t.string :professione
      t.string :soprannome
      t.string :alias
      t.text :note_generali
      t.belongs_to :ambit, index: true
      t.belongs_to :area, index: true
      t.belongs_to :group, index: true

      t.timestamps
    end
  end
end
