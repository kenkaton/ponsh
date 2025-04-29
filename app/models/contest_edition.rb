class ContestEdition < ApplicationRecord
  belongs_to :contest
  has_many :awards, dependent: :destroy

  validates :contest_id, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :name, presence: true
  validates :year, uniqueness: { scope: :contest_id }

  def full_name
    "#{name} (#{year}年)"
  end
end
