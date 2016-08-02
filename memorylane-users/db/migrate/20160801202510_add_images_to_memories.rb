class AddImagesToMemories < ActiveRecord::Migration[5.0]
  def self.up
    change_table :memories do |t|
      t.attachment :memoryphoto
    end
  end

  def self.down
    remove_attachment :memories, :memoryphoto
  end
end
