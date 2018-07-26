class Task < ApplicationRecord
  validates :content, presence: true, length: { maximum: 255 }
  validates :status, presence: true, format: { with: /★+/ }, length: { maximum: 3 }
end
