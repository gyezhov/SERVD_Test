# frozen_string_literal: true

class FavoriteOpportunity < ApplicationRecord
  belongs_to :user
  belongs_to :opportunity

  validates :user_id, uniqueness: { scope: :opportunity_id,
                                    message: 'Event already favorited' }

end
