class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)

  end

  private

  def set_group
  end

  def group_params
    params.require(:group).permit(:name, :event_type, :hourly_rate, :size, :location)
  end




end
