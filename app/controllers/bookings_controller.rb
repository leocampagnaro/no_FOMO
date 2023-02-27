class BookingsController < ApplicationController
  before_action :set_booking, only: ['destroy']

  def new
    @group = Group.find(params[:group_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.group = @group
    @booking.save
  end

  def destroy
    @booking.destroy
  end

  private

  def set_booking
    @booking = booking.find(params[:user_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :price, :hours_booked, :rating, :review, :group_id)
  end
end
