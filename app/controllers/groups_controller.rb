class GroupsController < ApplicationController
  def index
    @groups = Group.all.order(id: :desc)
    respond_with @group
  end
  
  def show
    @group = Group.find params[:id]
    respond_with @group
  end
  
  def create
    params[:group] ||= {}
    
    @group = Group.new group_params
    @group.save!
    respond_with @group, status: :created, location: @group
  end
  
  def update
    @group = Group.find params[:id]
    @group.update_attributes!(group_params)
    
    respond_with @group, status: :ok
  end
  
  def destroy
    @group = Group.find params[:id]
    if @group.destroy
      render json: {status: 'ok'}, status: :ok
    else
      respond_with @group.errors, status: :unprocessable_entity
    end
  end
  
  protected
  def group_params
    params.require(:group).permit(:name)
  end
end
