class CreateFasciclesNames < ActiveRecord::Migration
  def change
    create_table :fascicles_names do |t|
      t.belongs_to :name
      t.belongs_to :fascicle

      t.timestamps
    end
  end
end
