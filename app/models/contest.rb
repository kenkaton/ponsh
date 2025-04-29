class Contest < ApplicationRecord
  has_many :contest_editions, dependent: :destroy
  has_many :awards, through: :contest_editions

  validates :name, presence: true
  validates :code, presence: true, uniqueness: true
end
