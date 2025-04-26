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
    errors.add(:base, "少なくとも1つの連絡先情報が必要です") unless any_contact_present?
  end
end
