class AddColumnToMemories < ActiveRecord::Migration[5.0]
  def change
    add_column :memories, :user_id, :integer
  end
end
