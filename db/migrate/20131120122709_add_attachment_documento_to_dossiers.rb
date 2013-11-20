class AddAttachmentDocumentoToDossiers < ActiveRecord::Migration
  def self.up
    change_table :dossiers do |t|
      t.attachment :documento
    end
  end

  def self.down
    drop_attached_file :dossiers, :documento
  end
end
