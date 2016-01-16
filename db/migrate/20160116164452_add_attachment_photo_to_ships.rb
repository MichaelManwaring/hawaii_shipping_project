class AddAttachmentPhotoToShips < ActiveRecord::Migration
  def self.up
    change_table :ships do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :ships, :photo
  end
end
