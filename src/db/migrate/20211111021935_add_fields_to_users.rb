class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :major, :string
    add_column :users, :acYear, :string
  end
end
