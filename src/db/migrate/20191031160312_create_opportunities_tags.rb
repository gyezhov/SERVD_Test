# frozen_string_literal: true

class CreateOpportunitiesTags < ActiveRecord::Migration[5.2]
  def change
    create_table :opportunities_tags do |t|
      t.references :opportunity, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
