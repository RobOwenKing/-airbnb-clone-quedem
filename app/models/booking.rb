class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  has_one :review
  # belongs_to :owner, through: :experience, source: :user
end
