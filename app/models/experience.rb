class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true
  validates :location, presence: true
  validates :date_choices, presence: true
  validates :photo, presence: true
end
