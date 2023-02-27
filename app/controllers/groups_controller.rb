class GroupsController < ApplicationController
  before_action :set_group, only: ['new', 'create', 'destroy', 'show']

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

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :event_type, :hourly_rate, :size, :location, :availability)
  end
end
