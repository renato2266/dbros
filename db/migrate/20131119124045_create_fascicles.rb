class CreateFascicles < ActiveRecord::Migration
  def change
    create_table :fascicles do |t|
      t.integer :numero
      t.text :note

      t.timestamps
    end
  end
end
