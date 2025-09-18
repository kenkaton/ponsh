class Comment < ApplicationRecord
  belongs_to :account
  belongs_to :commentable, polymorphic: true

  validates :body, presence: true, length: { minimum: 1, maximum: 1000 }

  scope :recent, -> { order(created_at: :desc) }
  scope :for_commentable, ->(commentable) { where(commentable: commentable) }

  def edited?
    edited_at.present?
  end
end
