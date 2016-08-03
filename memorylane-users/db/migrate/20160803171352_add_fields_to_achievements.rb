class AddFieldsToAchievements < ActiveRecord::Migration[5.0]
  def change
    add_column :memories, :achievement, :string
    add_column :memories, :reward, :string
  end
end
