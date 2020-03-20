class Review < ApplicationRecord
  belongs_to :booking
  validates :title, presence: true
  validates :content, presence: true
  validates :stars, presence: true
end
