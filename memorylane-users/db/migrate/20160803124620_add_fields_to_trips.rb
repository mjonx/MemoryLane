class AddFieldsToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :memories, :startpoint, :string
    add_column :memories, :enddate, :date
  end
end
