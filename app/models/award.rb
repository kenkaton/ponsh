class Award < ApplicationRecord
  belongs_to :contest_edition
  has_many :award_winners, dependent: :destroy
  has_many :products, through: :award_winners, source: :winner, source_type: "Product"
  has_many :brands, through: :award_winners, source: :winner, source_type: "Brand"
  has_many :companies, through: :award_winners, source: :winner, source_type: "Company"

  validates :contest_edition_id, presence: true
  validates :name, presence: true
  validates :code, presence: true, uniqueness: { scope: :contest_edition_id }
  validates :rank, presence: true, numericality: { only_integer: true, greater_than: 0 }

  def full_name
    "#{contest_edition.full_name} #{name}"
  end
end
