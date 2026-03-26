class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  scope :recent, -> { order(created_at: :desc) }
end
