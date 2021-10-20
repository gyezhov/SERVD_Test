# frozen_string_literal: true

class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
