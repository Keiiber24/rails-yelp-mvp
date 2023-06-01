class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: %w(0..5),
  message: "%{value} debes elegir algo de esta categoria" }
end
