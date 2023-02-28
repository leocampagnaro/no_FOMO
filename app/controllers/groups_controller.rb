class GroupsController < ApplicationController
  before_action :set_group, only: ['destroy', 'show']
  skip_before_action :authenticate_user!, only: :show

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    @group.save
  end

  def show
  end

  def destroy
    @group.destroy
    redirect_to user_path(user_id)
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :event_type, :hourly_rate, :size, :location, :description, :availability)
  end
end
