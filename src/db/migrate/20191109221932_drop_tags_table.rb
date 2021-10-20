# frozen_string_literal: true

class DropTagsTable < ActiveRecord::Migration[5.2]
  def change
    # drop_table :tags, force: :cascade
    drop_table :opportunities_tags

    # change_column :opportunities, :tag_id, :string
    remove_column :opportunities, :tag_id
    add_column :opportunities, :primary_tag_id, :string
    add_column :opportunities, :secondary_tag_id, :string
  end
end
