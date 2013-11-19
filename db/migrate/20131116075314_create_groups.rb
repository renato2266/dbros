class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :gruppo_criminale
      t.text :note_gruppo

      t.timestamps
    end
  end
end
