class GroupsController < ApplicationController
  before_action :set_group, only: ['destroy', 'show']
  skip_before_action :authenticate_user!, only: :show

  def index
    @groups = Group.all

    user_query = params[:query]
    if user_query.present?
      @groups = @groups.search_by_name_and_event_type(user_query)
    end
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    if @group.save
      redirect_to group_path(@group)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.new
  end

  def destroy
    @group.destroy
    redirect_to user_path(current_user)
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :event_type, :hourly_rate, :size, :location, :description, :availability, photos: [])
  end
end
