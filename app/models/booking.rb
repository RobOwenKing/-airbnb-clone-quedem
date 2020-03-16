class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  # belongs_to :owner, through: :experience, source: :user
end
