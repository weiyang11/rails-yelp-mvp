class Review < ApplicationRecord
  RATING = [0, 1, 2, 3, 4, 5].freeze
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: RATING }
end
