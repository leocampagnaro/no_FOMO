class DashboardsController < ApplicationController
  def index
    @bookings = Booking.all
    @groups = Group.all
  end
end
