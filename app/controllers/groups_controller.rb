class GroupsController < ApplicationController
  
  after_action only: [:index]   { |c| c.paginate :groups }
  
  def index
    @groups = Group.all.includes(:teams, :standings, :matches).search(params[:q]).result.page(params[:page]).order(:name)
    respond_with @groups
  end
  
  def show
    @group = Group.where(name: params[:id].upcase).first
    respond_with @group
  end
  
  def matches
    group = Group.where(name: params[:id].upcase).first
    @matches = group.matches.search(params[:q]).result.page(params[:page])
    
    respond_with @matches
  end
  
  def create
    params[:group] ||= {}
    
    @group = Group.new group_params
    @group.save!
    respond_with @group, status: :created, location: @group
  end
  
  def update
    @group = Group.where(name: params[:id].upcase).first
    @group.update_attributes!(group_params)
    
    respond_with @group, status: :ok
  end
  
  def destroy
    @group = Group.where(name: params[:id].upcase).first
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
