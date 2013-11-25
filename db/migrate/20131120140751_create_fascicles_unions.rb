class CreateFasciclesUnions < ActiveRecord::Migration
  def change
    create_table :fascicles_unions do |t|
      t.belongs_to :fascicle
      t.belongs_to :union

      t.timestamps

    end
  end
end
