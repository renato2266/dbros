class CreateFasciclesMagazines < ActiveRecord::Migration
  def change
    create_table :fascicles_magazines do |t|
      t.belongs_to :magazine
      t.belongs_to :fascicle

      t.timestamps
    end
  end
end
