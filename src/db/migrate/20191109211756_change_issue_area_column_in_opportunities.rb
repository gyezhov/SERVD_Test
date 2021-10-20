# frozen_string_literal: true

class ChangeIssueAreaColumnInOpportunities < ActiveRecord::Migration[5.2]
  def change
    change_column :opportunities, :issue_area_id, :string
    rename_column :opportunities, :issue_area_id, :issue_area
  end
end
