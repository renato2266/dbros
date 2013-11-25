class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :area_criminale
      t.text :note_area
      t.integer :ambit_id

      t.timestamps
    end
  end
end
