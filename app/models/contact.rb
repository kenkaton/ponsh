class Contact < ApplicationRecord
  belongs_to :contactable, polymorphic: true

  validates :tel, format: { with: /\A[0-9\-\(\)]+\z/, allow_blank: true }
  validates :fax, format: { with: /\A[0-9\-\(\)]+\z/, allow_blank: true }
  validates :website, format: { with: URI.regexp(%w[http https]), allow_blank: true }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, allow_blank: true }
  validates :instagram, format: { with: /\A@[\w\.]+\z/, allow_blank: true }
  validates :twitter, format: { with: /\A@[\w\.]+\z/, allow_blank: true }
  validates :facebook, format: { with: /\A[\w\.]+\z/, allow_blank: true }
  validates :line, format: { with: /\A@[\w\.]+\z/, allow_blank: true }

  def any_contact_present?
    tel.present? || fax.present? || website.present? || email.present? ||
    instagram.present? || twitter.present? || facebook.present? || line.present?
  end

  validate :at_least_one_contact_present

  private

  def at_least_one_contact_present
    errors.add(:base, "\u5C11\u306A\u304F\u3068\u30821\u3064\u306E\u9023\u7D61\u5148\u60C5\u5831\u304C\u5FC5\u8981\u3067\u3059") unless any_contact_present?
  end
end
