class AddAttachmentPhotoToStyles < ActiveRecord::Migration
  def self.up
    change_table :styles do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :styles, :photo
  end
end
