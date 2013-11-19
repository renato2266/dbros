class CreateFasciclesGroups < ActiveRecord::Migration
  def change
    create_table :fascicles_groups do |t|
      t.belongs_to :group
      t.belongs_to :fascicle

      t.timestamps
    end
  end
end
