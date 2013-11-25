class CreateUnions < ActiveRecord::Migration
  def change
    create_table :unions do |t|
      t.string :denominazione
      t.string :sede
      t.belongs_to :area, index: true
      t.text :descrizione

      t.timestamps
    end
  end
end
