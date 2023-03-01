class BookingsController < ApplicationController
  before_action :set_booking, only: ['destroy']
  before_action :set_user, only: ['new', 'create']

  def new
    @group = Group.find(params[:group_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.group = Group.find(params[:group_id])
    if @booking.save
      redirect_to user_path(@user)
    else
      render new
    end
  end

  def destroy
    @booking.destroy
    redirect_to user_path(current_user)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def booking_params
    params.require(:booking).permit(:date, :price, :hours_booked, :rating, :review, :group_id)
  end
end
