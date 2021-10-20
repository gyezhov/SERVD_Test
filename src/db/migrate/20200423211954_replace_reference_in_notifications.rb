class ReplaceReferenceInNotifications < ActiveRecord::Migration[5.2]
  def change
    remove_column :notifications, :user_id
    add_reference :notifications, :organization, index: true, null: true
    add_reference :notifications, :opportunity, index: true, null: true
  end
end
