class AddColumnsToMemories < ActiveRecord::Migration[5.0]
  def change
    add_column :memories, :artist, :string
    add_column :memories, :location, :string
    add_column :memories, :friends, :string
  end
end
