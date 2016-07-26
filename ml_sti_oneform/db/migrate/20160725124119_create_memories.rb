class CreateMemories < ActiveRecord::Migration[5.0]
  def change
    create_table :memories do |t|
      t.string :title
      t.string :destination
      t.string :venue
      t.date :date
      t.string :category

      t.timestamps
    end
  end
end
