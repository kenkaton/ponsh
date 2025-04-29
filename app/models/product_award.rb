class ProductAward < ApplicationRecord
  belongs_to :product
  belongs_to :award
end
