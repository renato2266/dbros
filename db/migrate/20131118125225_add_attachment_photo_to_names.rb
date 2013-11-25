class AddAttachmentPhotoToNames < ActiveRecord::Migration
  def self.up
    change_table :names do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :names, :photo
  end
end
