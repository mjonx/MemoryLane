class AddNotesToMemories < ActiveRecord::Migration[5.0]
  def change
    add_column :memories, :notes, :string
  end
end
