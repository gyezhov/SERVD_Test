class AddReferenceToOrgFromUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :organization, index: true, null: true
  end
end
