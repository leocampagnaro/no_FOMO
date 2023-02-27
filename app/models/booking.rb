class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :date, :price, :hours_booked, presence: true
end
