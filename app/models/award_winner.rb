class AwardWinner < ApplicationRecord
  belongs_to :award
  belongs_to :winner, polymorphic: true

  validates :award_id, presence: true
  validates :winner_id, presence: true
  validates :winner_type, presence: true
  validates :award_id, uniqueness: { scope: [ :winner_id, :winner_type ] }
end
