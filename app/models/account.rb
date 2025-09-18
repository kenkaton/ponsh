class Account < ApplicationRecord
  include Rodauth::Rails.model
  enum :status, { unverified: 1, verified: 2, closed: 3 }

  # Associations
  has_many :comments, dependent: :destroy

  # Validations
  validates :display_name, presence: true, length: { minimum: 2, maximum: 32 },
    format: { with: /\A[^<>\/\\]+\z/, message: "使用できない文字（<>\/\\）が含まれています" }

  # Callbacks
  before_validation :normalize_display_name

  private

  def normalize_display_name
    self.display_name = display_name&.strip&.squeeze(" ")
  end
end
