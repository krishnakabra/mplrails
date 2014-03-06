class AddAttachmentPhotoToScores < ActiveRecord::Migration
  def self.up
    change_table :scores do |t|
      t.attachment :photo1
      t.attachment :photo2
      t.attachment :photo3
      t.attachment :photo4
      t.attachment :photo5
    end
  end

  def self.down
    drop_attached_file :scores, :photo1
    drop_attached_file :scores, :photo2
    drop_attached_file :scores, :photo3
    drop_attached_file :scores, :photo4
    drop_attached_file :scores, :photo5
  end
end
