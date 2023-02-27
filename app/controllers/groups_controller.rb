class GroupsController < ApplicationController
  before_action :set_group, only: ['destroy', 'show']

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    # group.user_id?
    @group.save
  end

  def show
  end

  def destroy
    @group.destroy
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :event_type, :hourly_rate, :size, :location, :description, :availability)
  end
end
