class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :date, :hours_booked, presence: true
end
