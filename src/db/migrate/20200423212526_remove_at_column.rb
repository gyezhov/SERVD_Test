class RemoveAtColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :notifications, :at
  end
end
