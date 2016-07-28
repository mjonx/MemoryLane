class AddCoverphotoToUsers < ActiveRecord::Migration[5.0]
  def self.up
    change_table :users do |t|
      t.attachment :coverphoto
    end
  end

  def self.down
    remove_attachment :users, :coverphoto
  end
end
