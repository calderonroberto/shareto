class AddAttachmentImageToThings < ActiveRecord::Migration
  def self.up
    change_table :things do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :things, :image
  end
end
