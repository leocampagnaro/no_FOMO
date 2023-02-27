class Group < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :name, :event_type, :hourly_rate, :size, :location, presence: true
  validates :size, numericality: { only_integer: true }
  validates :size, inclusion: { in: [2..100], message: 'Not a valid size (should be between 2 and 100)' }
  validates :hourly_rate, numericality: { greater_than: 0, message: 'You are worth more than 0 eur' }
end
