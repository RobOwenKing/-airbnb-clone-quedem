class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :date_choices, presence: true
  validates :max_participants, presence: true, numericality: true
  validates :photo, presence: true
  validates :price, presence: true, numericality: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
