# frozen_string_literal: true

# Class: Tag
#
# Functions:
# create_tag(tag_name)
# delete_tag()
#
class Tag < ApplicationRecord
  validates_uniqueness_of :name

  alias_attribute :approved?, :approved

  has_many :users, dependent: :nullify
  has_many :favorite_opportunities, dependent: :nullify
  has_many :organizations, dependent: :nullify
  # has_many :ideas, dependent: :nullify

  # has_many :opportunities_tags
  # has_many :opportunities, through: :opportunities_tags
end
