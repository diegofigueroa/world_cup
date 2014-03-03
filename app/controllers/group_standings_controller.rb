class GroupStandingsController < ApplicationController
  
  after_action only: [:index]   { |c| c.paginate :groups }
  
  def index
    @groups = Group.all.includes(:teams, :standings, :matches).search(params[:q]).result.page(params[:page]).order(:name)
    (params[:embed] ||= []) << 'standings'
    params[:hide] = ['teams']
    
    respond_with @groups
  end
  
end
