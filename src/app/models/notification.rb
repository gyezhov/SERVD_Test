class Notification < ApplicationRecord
  # andradl2
  belongs_to :organization
  belongs_to :opportunity, optional: true
end
