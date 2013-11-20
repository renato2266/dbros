class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.string :name_magazine
      t.date :data_fondazione
      t.string :luogo_stampa
      t.belongs_to :area, index: true
      t.belongs_to :union, index: true
      t.belongs_to :group, index: true
      t.text :note

      t.timestamps
    end
  end
end
