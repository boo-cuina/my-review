class Review < ApplicationRecord
  validates :item, presence: true
  validates :review, presence: true
end
