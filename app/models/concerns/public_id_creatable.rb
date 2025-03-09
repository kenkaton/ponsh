# frozen_string_literal: true

module PublicIdCreatable
  extend ActiveSupport::Concern

  included do
    before_create :set_public_id
  end

  def to_param
    public_id
  end

  private

  def set_public_id
    public = loop do
      public = SecureRandom.alphanumeric(8)
      break public unless self.class.exists?(public_id: public)
    end
    self.public_id = public
  end
end
