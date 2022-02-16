class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :content, length: { minimum: 1 }
  validates :rating, length: { minimum: 1 }
  validates :rating, numericality: true
  validates :rating, numericality: { less_than_or_equal_to: 5 }
  validates :rating, numericality: { greater_than_or_equal_to: 0 }
end
